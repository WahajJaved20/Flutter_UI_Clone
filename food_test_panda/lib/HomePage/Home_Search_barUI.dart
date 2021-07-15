import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Color.fromRGBO(108, 140, 164, 0.2), width: 3),
      ),
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          prefix: Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Icon(
              Icons.search,
              color: Colors.pink,
              size: 20,
            ),
          ),
          suffix: InkWell(
            onTap: () {
              setState(() {
                _searchController.text = '';
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
              ),
              child: Icon(
                Icons.cancel_rounded,
                color: Colors.pink,
                size: 20,
              ),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
              width: 4,
            ),
          ),
          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
          hintText: "Search for Shops and Resturaunts",
        ),
        onFieldSubmitted: (context) {
          print('You searched for ' + context);
        },
      ),
    );
  }
}
