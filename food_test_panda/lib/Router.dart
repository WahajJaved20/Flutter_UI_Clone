import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_test_panda/Address/Address.dart';
import 'package:food_test_panda/Cart/Cart.dart';
import 'package:food_test_panda/Favorites/FavoritesScreen.dart';
import 'package:food_test_panda/HomePage/Home_page.dart';
import 'package:food_test_panda/Orders/OrdersScreen.dart';
import 'package:food_test_panda/Profile/Profile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/favorite':
        return MaterialPageRoute(builder: (_) => Favorites());
      case '/orders':
        return MaterialPageRoute(builder: (_) => Order());
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/address':
        return MaterialPageRoute(builder: (_) => Address());
      case '/cart':
        return MaterialPageRoute(builder: (_) => Cart());
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
