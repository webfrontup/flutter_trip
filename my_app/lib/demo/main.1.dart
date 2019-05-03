import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
       title: 'Flutter bottomNavigationBar',
       theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Image.network(
          'http://www.devio.org/img/avatar.png'
        ),
     );
   }
}