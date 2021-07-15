import 'package:flutter/material.dart';
import 'package:food_test_panda/HomePage/Home_page.dart';
import 'package:food_test_panda/Router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePage(),
    );
  }
}
