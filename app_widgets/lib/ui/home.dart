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
              PizzaItem(name: "Pizza 1"),
              PizzaItem(name: "Pizza 2"),
              PizzaImagewidget(),
              OrderButton()
            ],
          )),
    );
  }
}

class PizzaItem extends StatelessWidget {
  String name;

  PizzaItem({Key key, @required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            this.name,
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
    );
  }
}

class PizzaImagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(
      image: pizzaAsset,
      width: 300.0,
      height: 300.0,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50.0),
        child: RaisedButton(
          child: Text("Order your Pizza!"),
          color: Colors.lightGreen,
          elevation: 10.0,
          onPressed: () {
            order(context);
          },
        ));
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text("Order Completed"), content: Text("Thanks for your order!"));
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
