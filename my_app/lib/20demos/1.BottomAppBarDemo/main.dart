import 'package:flutter/material.dart';
import 'BottomAppBarDemo.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter bottomNavigationBar',
        theme:ThemeData.light(),
        home:BottomAppBarDemo()
    );
  }
}