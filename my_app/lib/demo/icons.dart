import 'package:flutter/material.dart';
void main() {
    runApp(new MaterialApp(home: new MyApp()));
}
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Icons"),
            ),
            body: new Center(
                child: new Icon(Icons.android,size: 100.0),
            ),
        );
    }
}