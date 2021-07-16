import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => null,
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 25),
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 80,
                        right: 180,
                      ),
                      child: Text(
                        "Food Delivery",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 165),
                      child: Text(
                        "Order Food you Love",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: null,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 25,
                    ),
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 130, right: 40),
                            child: Text(
                              "Pandamart",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 6,
                              top: 10,
                            ),
                            child: Text(
                              "Everyday Essentials\nup to 20% off",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 22,
                          left: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.43,
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 60,
                                  right: 70,
                                ),
                                child: Text(
                                  "Pick-Up",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                  top: 10,
                                ),
                                child: Text(
                                  "Enjoy FLAT 25% off\nand more",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 5,
                        ),
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  right: 90,
                                ),
                                child: Text(
                                  "Shop",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  right: 20,
                                ),
                                child: Text(
                                  "Grocery and more",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
