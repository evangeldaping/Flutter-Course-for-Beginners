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
  var isBulbOn = false;
  var isOn = false;

  _builBulbImage() {
    if (isBulbOn)
      return Image.asset("images/bulb_on.png");
    else
      return Image.asset("images/bulb_off.png");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // _builBulbImage(),

                    isBulbOn
                        ? Image.asset("images/bulb_on.png")
                        : Image.asset("images/bulb_off.png"),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isBulbOn = !isBulbOn;
                          isOn = !isOn;
                        });
                      },
                      child: isOn ? Text("Turn Off") : Text("Turn On"),
                    )
                  ],
                ))));
  }
}
