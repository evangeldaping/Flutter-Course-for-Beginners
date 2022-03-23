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
            child: Center(
              child: Container(
                  color: Colors.green,
                  height: 300,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/evangel.jpg"),
                      ),
                      Container(
                        height: 20,
                      ), // use for spacing
                      Text("AppMaking"),
                      Text("Learn flutter"),
                      SizedBox(
                        height: 40,
                      ), // use for spacing
                      ElevatedButton(onPressed: () {}, child: Text("Contact"))
                    ],
                  )),
            )),
      ),
    );
  }
}
