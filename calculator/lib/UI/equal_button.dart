import 'package:flutter/material.dart';

class EqualButton extends StatelessWidget {
  final bool darkMode;
  EqualButton(this.darkMode);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(234, 128, 49, 1),
          boxShadow: [
            BoxShadow(
              color: darkMode ? Colors.black : Color.fromRGBO(233, 233, 233, 1),
              spreadRadius: 0.0,
              offset: Offset(0.0, 3.0),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.41,
        height: MediaQuery.of(context).size.height * 0.088,
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '=',
            style: TextStyle(fontSize: 32, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]);
  }
}
