import 'package:flutter/material.dart';

//使用GridView将widget放置为二维列表。 GridView提供了两个预制list，或者您可以构建自定义网格。
// 当GridView检测到其内容太长而不适合渲染框时，它会自动滚动。
//GridView.count 允许您指定列数
//GridView.extent 允许您指定项的最大像素宽度
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {

    List<Container> _buildGridTileList(int count) {
      return new List<Container>.generate(
          count,
              (int index) =>
          new Container(child: new Image.asset('data_repo/img/social/facebook.png')));
    }
    Widget buildGrid() {
      return new GridView.extent(
          maxCrossAxisExtent: 150.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _buildGridTileList(30));
    }

    return MaterialApp(
      title:'ListView widget',

      home:Scaffold(
          appBar:new AppBar(
            title:new Text('水平方向布局'),
          ),
          body:new Center(
            child: buildGrid(),
          )
      ),
    );
  }
}
