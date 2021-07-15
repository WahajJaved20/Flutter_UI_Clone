import 'package:flutter/material.dart';

class DataDeals extends StatelessWidget {
  final dealName;
  DataDeals(this.dealName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 15, bottom: 20, right: 10),
        height: 140,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 90,
                left: 10,
              ),
              child: Center(
                child: Text(
                  this.dealName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
