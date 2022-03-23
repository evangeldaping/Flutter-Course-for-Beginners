import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green[800],
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("App Name"),
          ),
          body: Container(
              // padding: EdgeInsets.only(top: 20, left: 14),
              margin: EdgeInsets.all(12.0),
              height: 100,
              width: 200,
              color: Colors.red,
              child: Center(
                child: Text("Hello"),
              ))),
    );
  }
}
