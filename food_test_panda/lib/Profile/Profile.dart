import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/'),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.pink,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Card(
                  elevation: 6,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'Name ',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                'User',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 175),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.edit,
                                  size: 25,
                                  color: Colors.pink,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Card(
                  elevation: 6,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 50, top: 10),
                              child: Text(
                                'Email ',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Text(
                                'abc@xyz.com',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.edit,
                                  size: 25,
                                  color: Colors.pink,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Card(
                  elevation: 6,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'Password ',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, right: 20),
                              child: Text(
                                '*****',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 145),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.edit,
                                  size: 25,
                                  color: Colors.pink,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Card(
                  elevation: 6,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'Mobile number',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Text(
                                '0310-xxxxxxx',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 110),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.edit,
                                  size: 25,
                                  color: Colors.pink,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
