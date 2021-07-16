import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.pink),
      bottom: PreferredSize(
        child: Container(
          color: Color.fromRGBO(108, 140, 164, 0.2),
          width: 5,
        ),
        preferredSize: Size.fromHeight(5),
      ),
      shadowColor: Color.fromRGBO(108, 140, 164, 1),
      title: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Text(
              "Your location",
              style: TextStyle(fontSize: 20, color: Colors.pink),
            ),
            Text(
              "Home                    ",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/favorite'),
              icon: Center(
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: 33,
                ),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/cart'),
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
            )
          ],
        )
      ],
    );
  }
}
