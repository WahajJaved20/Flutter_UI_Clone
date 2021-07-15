import 'package:flutter/material.dart';
import 'package:food_test_panda/HomePage/deals_class.dart';

class Deals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 190,
              top: 20,
            ),
            child: Text(
              "Your Daily Deals",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                DataDeals("Popular in your Area"),
                DataDeals("New on FoodPanda"),
                DataDeals("Resturaunt deals"),
                DataDeals("New shops in your Area"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
