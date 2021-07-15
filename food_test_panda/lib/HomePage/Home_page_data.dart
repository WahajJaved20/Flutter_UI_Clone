import 'package:flutter/material.dart';
import 'package:food_test_panda/HomePage/Home_Deals.dart';
import 'package:food_test_panda/HomePage/Home_Resturaunt_count.dart';
import 'package:food_test_panda/HomePage/Home_Search_barUI.dart';
import 'package:food_test_panda/HomePage/Home_Wishes.dart';
import 'package:food_test_panda/HomePage/Home_body_content.dart';

class HomeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wishes(),
        ResCount(),
        SearchBar(),
        BodyContent(),
        Deals(),
      ],
    );
  }
}
