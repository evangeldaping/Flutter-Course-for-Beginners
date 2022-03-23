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
            child: Image.network(
              "https://pbs.twimg.com/profile_images/1243593573909618689/B8JSVJmM_400x400.jpg",
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
