import 'package:flutter/material.dart';

// ignore: camel_case_types
class List_View_Horizontal extends StatelessWidget {
  const List_View_Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.pink,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.green,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
