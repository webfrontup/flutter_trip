import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://blogimages.jspang.com/blogtouxiang1.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: new Text('JSPang 技术胖'),
        )
      ],
    );


    return MaterialApp(
      title:'ListView widget',

      home:Scaffold(
        appBar:new AppBar(
          title:new Text('垂直方向布局'),
        ),
        body:Center(child:stack),
      ),
    );
  }
}
//- alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。它有两个值X轴距离和Y轴距离，值是从0到1的，都是从上层容器的左上角开始算起的。
