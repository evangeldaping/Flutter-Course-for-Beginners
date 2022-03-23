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
          child: Center(
              child: ElevatedButton(
            child: Text("Press me"),
            onPressed: () {},
          )),
        ),
      ),
    );
  }
}
