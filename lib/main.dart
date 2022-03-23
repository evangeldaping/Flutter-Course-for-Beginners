import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("$count"),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          count = count + 1;
                        });
                        print(count);
                      },
                      child: Text("Add"),
                    )
                  ],
                ))));
  }
}
