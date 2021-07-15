import 'package:flutter/material.dart';

class Wishes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(right: 115),
      height: 40,
      // color: Colors.amber,
      child: new Text(
        "Good Evening, User",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
