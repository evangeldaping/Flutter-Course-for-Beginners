import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    ),
  ));
}
