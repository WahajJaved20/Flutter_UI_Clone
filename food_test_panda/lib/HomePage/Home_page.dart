import 'package:flutter/material.dart';
import 'package:food_test_panda/HomePage/HomeAppBar.dart';
import 'package:food_test_panda/Menu_bar.dart';
import 'package:food_test_panda/HomePage/Home_page_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: HomeAppBar(),
      ),
      drawer: MenuBar(),
      //to be set as a column uwu
      body: SingleChildScrollView(
        child: HomeData(),
      ),
    );
  }
}
