import 'package:flutter/material.dart';

// ignore: camel_case_types
class List_View_Vertical extends StatelessWidget {
  const List_View_Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Kendal"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("rismahdyh@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Risma Bidayatul Hidayah"),
          ),
        ],
      ),
    );
  }
}
