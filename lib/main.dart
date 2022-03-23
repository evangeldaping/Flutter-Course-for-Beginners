import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("App Name"),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.android),
                TextButton(
                  child: Text("Press Me"),
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}
