import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ResCount extends StatelessWidget {
  final random = new Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40),
      padding: EdgeInsets.only(right: 100),
      height: 40,
      // color: Colors.amber,
      child: Row(
        children: <Widget>[
          Text(
            "What's for dinner? There are \n${this.random.nextInt(1000)} resturaunts in your area",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
