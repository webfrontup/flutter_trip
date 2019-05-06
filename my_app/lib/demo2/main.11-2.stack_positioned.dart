import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    var stack = new Stack(

      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://jspang.com/static//myimg/blogtouxiang.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          top:10.0,
          left:10.0,
          child: new Text('JSPang.com'),
        ),
        new Positioned(
          bottom:10.0,
          right:10.0,
          child: new Text('技术胖'),
        )
      ],
    );


    return MaterialApp(
      title:'ListView widget',
      home:Scaffold(
        appBar:new AppBar(
          title:new Text('层叠布局'),
        ),
        body:Center(child:stack),
      ),
    );
  }
}