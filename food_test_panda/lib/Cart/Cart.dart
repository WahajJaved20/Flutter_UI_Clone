import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget emptyOrders() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 180, right: 160),
          child: Center(
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 200,
                color: Colors.pink,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 180),
          child: Text(
            'You havent added anything to your cart',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
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
                child: Text("Browse")),
          ),
        )
      ],
    );
  }

  Widget listMaker() {
    return ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: null,
              title: Text(cart[index]),
            ),
          );
        });
  }

  List<String> cart = [];
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
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: cart.isEmpty ? emptyOrders() : listMaker(),
      ),
    );
  }
}
