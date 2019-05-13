import 'package:flutter/material.dart';
import 'multi/Column.dart';
import 'multi/CustomMultiChildLayout.dart';
import 'multi/Flow.dart';
import 'multi/GridView.dart';
import 'multi/IndexedStack.dart';
import 'multi/ListBody.dart';
import 'multi/ListView.dart';
import 'multi/Row.dart';
import 'multi/Stack.dart';
import 'multi/Table.dart';
import 'multi/Wrap.dart';
import 'single/AspectRatio.dart';
import 'single/Baseline.dart';
import 'single/Center.dart';
import 'single/ConstrainedBox.dart';
import 'single/Container.dart';
import 'single/CustomSingleChildLayout.dart';
import 'single/FittedBox.dart';
import 'single/FractionallySizedBox.dart';
import 'single/IntrinsicHeight.dart';
import 'single/IntrinsicWidth.dart';
import 'single/LimitedBox.dart';
import 'single/Offstage.dart';
import 'single/OverflowBox.dart';
import 'single/Padding.dart';
import 'single/Align.dart';
import 'single/SizedBox.dart';
import 'single/SizedOverflowBox.dart';
import 'single/Transform.dart';

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(MyApp());
}

const List<String> singleLayoutWidgets = [
  "Container",
  "Padding",
  "Center",
  "Align",
  "FittedBox",
  "AspectRatio",
  "ConstrainedBox",
  "Baseline",
  "FractionallySizedBox",
  "IntrinsicHeight",
  "IntrinsicWidth",
  "LimitedBox",
  "Offstage",
  "OverflowBox",
  "SizedBox",
  "SizedOverflowBox",
  "Transform",
  "CustomSingleChildLayout",
];

const List<String> multiLayoutWidgets = [
  "Row",
  "Column",
  "Stack",
  "IndexedStack",
  "GridView",
  "Flow",
  "Table",
  "Wrap",
  "ListBody",
  "ListView",
  "CustomMultiChildLayout",
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Layout Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        '/Container': (_) => new LYContainer(),
        '/Padding': (_) => new LYPadding(),
        '/Center': (_) => new LYCenter(),
        '/Align': (_) => new LYAlign(),
        '/FittedBox': (_) => new LYFittedBox(),
        '/AspectRatio': (_) => new LYAspectRatio(),
        '/ConstrainedBox': (_) => new LYConstrainedBox(),
        '/Baseline': (_) => new LYBaseline(),
        '/FractionallySizedBox': (_) => new LYFractionallySizedBox(),
        '/IntrinsicHeight': (_) => new LYIntrinsicHeight(),
        '/IntrinsicWidth': (_) => new LYIntrinsicWidth(),
        '/LimitedBox': (_) => new LYLimitedBox(),
        '/Offstage': (_) => new LYOffstage(),
        '/OverflowBox': (_) => new LYOverflowBox(),
        '/SizedBox': (_) => new LYSizedBox(),
        '/SizedOverflowBox': (_) => new LYSizedOverflowBox(),
        '/Transform': (_) => new LYTransform(),
        '/CustomSingleChildLayout': (_) => new LYCustomSingleChildLayout(),

        '/Row': (_) => new LYRow(),
        '/Column': (_) => new LYColumn(),
        '/Stack': (_) => new LYStack(),
        '/IndexedStack': (_) => new LYIndexedStack(),
        '/GridView': (_) => new LYGridView(),
        '/Flow': (_) => new LYFlow(),
        '/Table': (_) => new LYTable(),
        '/Wrap': (_) => new LYWrap(),
        '/ListBody': (_) => new LYListBody(),
        '/ListView': (_) => new LYListView(),
        '/CustomMultiChildLayout': (_) => new LYCustomMultiChildLayout(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

void _navigateToPage(BuildContext context, String page) {
  print("Page:$page");
  Navigator.of(context).pushNamed('/$page');
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> layoutWidgets = [];
    layoutWidgets.add("--Single-child layout widgets--");
    layoutWidgets.addAll(singleLayoutWidgets);
    layoutWidgets.add("--Multi-child layout widgets--");
    layoutWidgets.addAll(multiLayoutWidgets);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext buildContext, int index) {
          return new ListTile(
            title: new LayoutListItem(
              index: index,
              title: layoutWidgets[index],
              onPress: () {
                String item = layoutWidgets[index];
                if (item.startsWith("--")) {
                  return;
                }

                _navigateToPage(context, layoutWidgets[index]);
              },
            ),
          );
        },
        itemCount: (singleLayoutWidgets.length + multiLayoutWidgets.length + 2),
      ),
    );
  }
}

class LayoutListItem extends StatelessWidget {
  LayoutListItem({this.index, this.title, this.onPress});

  final int index;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPress,
      child: new Center(
        child: new Text(
          "$title",
          style: new TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
