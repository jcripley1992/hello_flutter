import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30.0, left: 15.0),
          color: Colors.deepOrangeAccent,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Margheritta",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    )),
                    Expanded(
                        child: Text(
                      "Tomato, Cheese",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Marinara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    )),
                    Expanded(
                        child: Text(
                      "Tomato, Basil",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
