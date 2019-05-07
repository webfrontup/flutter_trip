import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'Text widget',
      home:Scaffold(
        body:Center(
          child:Container(
//            child:new Image.network(
//              'http://blogimages.jspang.com/blogtouxiang1.jpg',
//              color: Colors.greenAccent,
//              colorBlendMode: BlendMode.darken,
//              repeat: ImageRepeat.repeat,
//            ),
            child: Image.asset('data_repo/img/social/facebook.png'),
            width:300.0,
            height:200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}