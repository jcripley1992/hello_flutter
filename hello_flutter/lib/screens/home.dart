import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.black87,
      child: Center(
        child: Text(
          greet(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      )
    );
  }

  String greet() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    if (hour < 12) {
      hello = "Good Morning";
    } else if (hour > 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }

    return hello;
  }

  String showTime() {    
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    
    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now " + hour.toString() + ":" + minutes.toString();
  }
}
