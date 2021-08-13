import 'package:calculator/UI/buttons.dart';
import 'package:calculator/UI/equal_button.dart';
import 'package:calculator/UI/icon.dart';
import 'package:calculator/number_checker.dart';
import 'package:calculator/stacks.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool darkMode = true;
  TextEditingController _history = TextEditingController();
  TextEditingController _current = TextEditingController();

  switchModes() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  buttonPress(String num) {
    setState(() {
      _current.text = _current.text + num;
    });
  }

  clearState() {
    setState(() {
      _history.text = '';
      _current.text = '';
    });
  }

  deleteStateText() {
    setState(() {
      _current.text = _current.text.substring(0, _current.text.length - 1);
    });
  }

  int precedenceCheck(String operator) {
    switch (operator) {
      case '-':
        return 1;
      case '+':
        return 2;
      case '*':
        return 3;
      case '/':
        return 4;
      default:
        return 0;
    }
  }

  double applyOperator(double value1, double value2, String operator) {
    switch (operator) {
      case '-':
        return value1 - value2;
      case '+':
        return value1 + value2;
      case '*':
        return value1 * value2;
      case '/':
        return value1 / value2;
      default:
        return 0;
    }
  }

  double calculatePercentage(double val) {
    return val / 100;
  }

  bool checkOperator(String token) {
    if (token == '+' || token == '-' || token == '*' || token == '/') {
      return true;
    } else {
      return false;
    }
  }

  void calculateValue(String token) {
    Stacks operators = Stacks(), values = Stacks();
    for (int i = 0; i < token.length; i++) {
      String x = '';
      if (isNumeric(token[i])) {
        while (i < token.length && !checkOperator(token[i])) {
          if (token[i] == '%') {
            x = calculatePercentage(double.parse(x)).toString();
          } else {
            x = x + token[i];
          }

          i++;
        }
        print(x);
        values.push(double.parse(x));
        i--;
        x = '';
      } else if (token[i] == '') {
        continue;
      } else {
        while (!operators.isEmpty() &&
            precedenceCheck(operators.top()) >= precedenceCheck(token[i])) {
          double val2 = values.top();
          values.pop();
          double val1 = values.top();
          values.pop();
          String op = operators.top();
          operators.pop();
          values.push(applyOperator(val1, val2, op));
        }
        operators.push(token[i]);
      }
    }
    while (!operators.isEmpty()) {
      double val2 = values.top();
      values.pop();

      double val1 = values.top();
      values.pop();

      String op = operators.top();
      operators.pop();

      values.push(applyOperator(val1, val2, op));
    }
    setState(() {
      _history.text = _current.text;
      if (values.top().toInt() == values.top().toDouble()) {
        _current.text = values.top().toInt().toString();
      } else {
        _current.text = values.top().toStringAsFixed(4);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: darkMode
          ? Color.fromRGBO(36, 52, 65, 1)
          : Color.fromRGBO(245, 245, 245, 1),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: switchModes,
                    icon: darkMode
                        ? Icon(
                            Icons.dark_mode,
                            color: Colors.amber,
                            size: 30,
                          )
                        : Icon(
                            Icons.light_mode,
                            color: Colors.amber,
                            size: 30,
                          ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: darkMode
                        ? Text(
                            'Dark mode',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )
                        : Text(
                            'Light mode',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: EdgeInsets.only(top: 90),
                child: TextFormField(
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: darkMode
                        ? Colors.white54
                        : Color.fromRGBO(207, 207, 207, 1),
                  ),
                  enabled: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  controller: _history,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: TextFormField(
              style: TextStyle(
                  fontSize: 60, color: darkMode ? Colors.white : Colors.black),
              textAlign: TextAlign.end,
              controller: _current,
              enabled: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              maxLength: 18,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Button(
                          'Clear',
                          'C',
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => clearState(),
                    ),
                    GestureDetector(
                      child: ButtonIcon(
                          'icon',
                          Icons.backspace_outlined,
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => deleteStateText(),
                    ),
                    GestureDetector(
                      child: Button(
                          'operator',
                          '%',
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('%'),
                    ),
                    GestureDetector(
                      child: Button(
                          'operator',
                          '/',
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('/'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Button(
                          'number',
                          '1',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('1'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '2',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('2'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '3',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('3'),
                    ),
                    GestureDetector(
                      child: Button(
                          'operator',
                          'X',
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('*'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Button(
                          'number',
                          '4',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('4'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '5',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('5'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '6',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('6'),
                    ),
                    GestureDetector(
                      child: ButtonIcon(
                          'operator',
                          Icons.remove,
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('-'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Button(
                          'number',
                          '7',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('7'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '8',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('8'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '9',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('9'),
                    ),
                    GestureDetector(
                      child: Button(
                          'operator',
                          '+',
                          darkMode
                              ? Color.fromRGBO(234, 128, 49, 1)
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('+'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Button(
                          'number',
                          '0',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('0'),
                    ),
                    GestureDetector(
                      child: Button(
                          'number',
                          '.',
                          darkMode
                              ? Colors.white54
                              : Color.fromRGBO(163, 164, 166, 1),
                          darkMode),
                      onTap: () => buttonPress('.'),
                    ),
                    GestureDetector(
                        child: EqualButton(darkMode),
                        onTap: () => calculateValue(_current.text)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
