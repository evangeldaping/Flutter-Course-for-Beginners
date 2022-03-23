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
          child: Container(
              height: 200,
              width: 200,
              child: ElevatedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, elevation: 0),
              )),
        ),
      ),
    );
  }
}
