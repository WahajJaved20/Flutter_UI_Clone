import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  Widget emptyOrders() {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, top: 180, right: 170),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.location_searching_outlined,
                size: 200,
                color: Colors.pink,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180, left: 20),
            child: Text(
              'You havent saved any address yet.\nClick Add New Address to get started',
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
                    onPressed: null,
                    child: Text(
                      "Add New Address",
                      style: TextStyle(color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }

  Widget listMaker() {
    return ListView.builder(
        itemCount: add.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: null,
              title: Text(add[index]),
            ),
          );
        });
  }

  List<String> add = [];
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
            'Addresses',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: add.isEmpty ? emptyOrders() : listMaker(),
      ),
    );
  }
}
