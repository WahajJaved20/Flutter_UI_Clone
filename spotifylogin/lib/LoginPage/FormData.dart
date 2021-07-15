import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormData extends StatefulWidget {
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool emailValidity = false;
  bool passwordValidity = false;
  bool hideText = false;
  void changeHiddenState() {
    setState(() {
      hideText = !hideText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: TextFormField(
              controller: _emailController,
              validator: (value) {
                setState(() {
                  emailValidity = (EmailValidator.validate(value!));
                });
                return emailValidity ? null : "Enter the correct Email";
              },
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(fontSize: 20),
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.pink,
                  size: 27,
                ),
                hintText: "EMAIL",
                hintStyle:
                    GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 15)),
                labelText: "EMAIL",
                labelStyle: GoogleFonts.varelaRound(
                  textStyle: TextStyle(fontSize: 20),
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                    width: 4,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                  left: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value!.isNotEmpty && value.length > 8) {
                  setState(() {
                    passwordValidity = true;
                  });
                }
                return passwordValidity
                    ? null
                    : "Password Length should not be less than 8 characters";
              },
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(fontSize: 20),
              ),
              obscureText: hideText,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.pink,
                  size: 27,
                ),
                suffixIcon: hideText
                    ? IconButton(
                        onPressed: changeHiddenState,
                        icon: Icon(Icons.security),
                      )
                    : IconButton(
                        onPressed: changeHiddenState,
                        icon: Icon(Icons.remove_red_eye_outlined),
                      ),
                hintText: "Password",
                hintStyle:
                    GoogleFonts.varelaRound(textStyle: TextStyle(fontSize: 15)),
                labelText: "Password",
                labelStyle: GoogleFonts.varelaRound(
                  textStyle: TextStyle(fontSize: 20),
                  color: Colors.black,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                    width: 4,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                  left: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 219),
            child: InkWell(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
              onTap: null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      emailValidity &&
                      passwordValidity) {}
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
