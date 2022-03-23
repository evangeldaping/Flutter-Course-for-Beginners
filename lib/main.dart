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
          child: Center(
              child: Container(
            height: 280,
            color: Colors.grey,
            margin: EdgeInsets.all(8),
            child: Column(children: [
              Container(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Container(
                          child: CircleAvatar(
                        backgroundImage: AssetImage("images/evangel.jpg"),
                      )),
                      SizedBox(width: 20),
                      Expanded(
                        // Expanded wil occupy the remaining space
                        child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("AppMaking"),
                                Text("Learn Flutter"),
                              ]),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  )),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
                    fit: BoxFit.cover,
                  )),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.thumb_up),
                              Text("Like"),
                            ],
                          ))
                        ],
                      )),
                      Container(
                          child: Row(
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.message),
                              Text("Comment"),
                            ],
                          ))
                        ],
                      )),
                      Container(
                          child: Row(
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.share),
                              Text("Share"),
                            ],
                          ))
                        ],
                      )),
                    ]),
              ),
            ]),
          )),
        ),
      ),
    );
  }
}
