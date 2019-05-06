import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'ListView widget',

      home:Scaffold(
          appBar:new AppBar(
            title:new Text('垂直方向布局'),
          ),
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              水平方向相对屏幕居中
//              Text('I am JSPang'),
//              Text('my website is jspang.com'),
//              Text('I love coding')
                Center(child:Text('I am JSPang')),
                Expanded(child:Center(child:Text('my website is jspang.com'))),
                Center(child:Text('I love coding'))
            ],
          )
      ),
    );
  }
}

// 文字对齐 crossAxisAlignment
// CrossAxisAlignment.star：居左对齐。
// CrossAxisAlignment.end：居右对齐。
// CrossAxisAlignment.center：居中对齐。

// 主轴对齐 mainAxisAlignment: MainAxisAlignment.center,
