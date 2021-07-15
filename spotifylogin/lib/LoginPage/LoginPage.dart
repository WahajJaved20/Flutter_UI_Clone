import 'package:flutter/material.dart';
import 'package:spotifylogin/LoginPage/FormData.dart';
import 'package:spotifylogin/LoginPage/Welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 140, left: 30),
                child: Welcome(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10,
                ),
                child: FormData(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
