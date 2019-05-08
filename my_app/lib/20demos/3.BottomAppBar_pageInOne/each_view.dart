import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title; // 这个变量是从主页面传递过来的
  EachView(this._title);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
      body: Center(child: Text(widget._title)),
    );
  }
}
