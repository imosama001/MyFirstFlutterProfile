import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext osama) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/img1.jpeg'),
                ),
                Text(
                  'Mohd Osama Raza',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.black),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      dividerCircle(color: Colors.deepOrange),
                      dividerCircle(color: Colors.teal),
                      dividerCircle(color: Colors.pink),
                      dividerCircle(color: Colors.purple),
                    ],
                  ),
                ),
                detailCard(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.redAccent,
                    ),
                    text: '+91 8418080332'),
                SizedBox(
                  height: 20,
                ),
                detailCard(
                    icon: Icon(Icons.email, color: Colors.redAccent),
                    text: 'imosama001@gmail.com'),
                // detailCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget detailCard({String text, Icon icon}) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: 40,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black12,
              spreadRadius: 3,
            ),
            BoxShadow(
              color: Colors.red,
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ]),
      child: Row(
        children: <Widget>[
          Center(child: icon),
          SizedBox(width: 20),
          Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerCircle({Color color}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: color,
      ),
      width: 20,
      height: 20,
    );
  }
}
