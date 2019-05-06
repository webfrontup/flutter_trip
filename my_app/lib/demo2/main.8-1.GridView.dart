import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'ListView widget',
      home:Scaffold(
          appBar: new AppBar(
            title: new Text('ListView Widget'),
          ),
          body:GridView.count(
            padding:const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            children: <Widget>[
              const Text('I am Jspang'),
              const Text('I love Web'),
              const Text('jspang.com'),
              const Text('我喜欢玩游戏'),
              const Text('我喜欢看书'),
              const Text('我喜欢吃火锅')
            ],
          )
      ),
    );
  }
}
// crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
// crossAxisCount:网格的列数，相当于一行放置的网格数量。
