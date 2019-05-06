import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
                leading:new Icon(Icons.access_time),
                title:new Text('access_time')
            ),
            new ListTile(
                leading:new Icon(Icons.account_balance),
                title:new Text('account_balance')
            ),
          ]
        ),
      ),
    );
  }
}