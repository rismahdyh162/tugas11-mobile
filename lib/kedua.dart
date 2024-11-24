import 'package:flutter/material.dart';
import 'package:flutter_application_1/grid_data.dart';
import 'package:flutter_application_1/list_grid.dart';
import 'package:flutter_application_1/list_horizontal.dart';
import 'package:flutter_application_1/list_vertical.dart';

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman List View",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Halaman Daftar List View",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_View_Vertical()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text(
              "List View Vertikal",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_View_Horizontal()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "List View Horizontal",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const List_View_Grid()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            child: const Text(
              "Grid View",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GridData()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text(
              "Grid View Data",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
