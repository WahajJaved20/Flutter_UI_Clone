import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  Widget emptyState() {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(top: 250),
      child: Column(
        children: [
          Text(
            "No Favorites Saved",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            "You'll see all your favorites here,to make\nordering even faster. Just look for the",
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.pink,
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
                child: Text("Lets find some favorites")),
          )
        ],
      ),
    ));
  }

  Widget listMaker() {
    return ListView.builder(
        itemCount: favs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: null,
              title: Text(favs[index]),
            ),
          );
        });
  }

  List<String> favs = [];
  var activeColor = Colors.black;
  changeColor() {
    setState(() {
      activeColor == Colors.black
          ? activeColor = Colors.pink
          : activeColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Navigator.of(context).pushNamed('/'),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.pink,
                )),
            backgroundColor: Colors.white,
            title: Text(
              'Favorites',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: TabBar(
                onTap: changeColor(),
                indicatorColor: Colors.pink,
                automaticIndicatorColorAdjustment: false,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 4, color: Colors.pink),
                ),
                labelColor: Colors.pink,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Delivery",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Pick-up",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
                unselectedLabelColor: activeColor),
          ),
          body: TabBarView(
            children: [
              Container(child: favs.isEmpty ? emptyState() : listMaker()),
              Container(
                child: favs.isEmpty ? emptyState() : listMaker(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
