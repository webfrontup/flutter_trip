import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title:'ListView widget',

      home:Scaffold(
          appBar:new AppBar(
            title:new Text('水平方向布局'),
          ),
          body:new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('data_repo/img/social/facebook.png'),
                  ),
                ),
                new Expanded(
                  child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 10.0, color: Colors.black38),
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: new Image.asset('data_repo/img/social/facebook.png'),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
