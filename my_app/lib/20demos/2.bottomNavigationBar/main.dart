import 'package:flutter/material.dart';
import 'package:my_app/20demos/2.bottomNavigationBar/bottom_navigation_widget.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter bottomNavigationBar',
        theme:ThemeData.light(),
        home:BottomNavigationWidget()
    );
  }
}