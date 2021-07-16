import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_test_panda/Address/Address.dart';
import 'package:food_test_panda/Cart/Cart.dart';
import 'package:food_test_panda/Favorites/FavoritesScreen.dart';
import 'package:food_test_panda/HomePage/Home_page.dart';
import 'package:food_test_panda/Orders/OrdersScreen.dart';
import 'package:food_test_panda/Profile/Profile.dart';

animateRoutes(var route) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => route,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return animateRoutes(HomePage());
      case '/favorite':
        return animateRoutes(Favorites());
      case '/orders':
        return animateRoutes(Order());
      case '/profile':
        return animateRoutes(Profile());
      case '/address':
        return animateRoutes(Address());
      case '/cart':
        return animateRoutes(Cart());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  });
}
