import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  Widget emptyOrders() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 0, top: 180, right: 160),
          child: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 200,
              color: Colors.pink,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 180, left: 30),
          child: Text(
            'You dont have any orders yet. Try one of our\nawesome resturaunts and place your first first order.',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Container(
          height: 40,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pushNamed('/'),
              child: Text("Browse resturaunts in your area")),
        )
      ],
    );
  }

  Widget listMaker() {
    return ListView.builder(
        itemCount: ord.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: null,
              title: Text(ord[index]),
            ),
          );
        });
  }

  List<String> ord = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.pink,
            ),
            onPressed: () => Navigator.of(context).pushNamed('/'),
          ),
          title: Text(
            'Orders',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: ord.isEmpty ? emptyOrders() : listMaker(),
      ),
    );
  }
}
