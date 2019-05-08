import 'package:flutter/material.dart';
import 'package:my_app/20demos/4.routeAnimateFadefastOutslowIn/pages.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:FirstPage()
    );
  }
}