### 如何导入Widget？
- 在React Native中，您需要导入每个必须的组件：

```javascript
// React Native
import React from "react";
import {StyleSheet, Text, View} from "react-native" //导入系统组件
import NavigationBar from "../common/NavigationBar"; //导入自己的组件
```
- 在Flutter中，要使用`Material Design`库中的小部件，则需要导入`material.dart`包。要使用IOS样式widget，请导入Cupertino库。要使用widget集，请导入widget库。或者，当然，也可以导入自己编写的widget:

```javascript
    // 认识Flutter Widget
    import "package:flutter/material.dart"; //导入系统material widget库
    import "package:flutter/cupertino.dart";
    import "package:flutter/widgets.dart";
    import "package:flutter/my_widgets.dart"
    // tip: 无论你导入那个widget包，Dart都只会导入在你的应用中使用的widget
```

### 如何使用Widget并且将其嵌套以形成Widget树？
- 在Flutter中，几乎所有东西都是widget。
- widget是用户界面的基本构建块，您将widget组成一个层次结构，调用widget树。每个窗口widget都嵌套在父窗口widget中，并从器父窗口继承属性。甚至应用程序对象本身也是一个组件，没有单独的“应用程序”对象。相反，根widget担任此角色。
- widget可以定义
```
结构元素-如按钮或菜单
文体元素-想字体或颜色主题
类似布局的填充或对齐一个方向
```
- 一下实例使用Material库中的Widget显示“hello world” 应用程序。在此示例中，widget树嵌套在MaterialApp的根widget中。
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('Welcome to Flutter'),
          ),
          body: Center(
              child: Text('Hello world'),
          )
      ),
    );
  }
}
```
- 在Flutter中，同样需要定义一个类来创建自定义widget，然后重用widget。您还可以定义和调用返回可重用小部件的函数，如以下实例中的构建函数所示。
```dart
// Flutter
class CustomCard extends StatelessWidget {
    CustomCard({@required this.index, @required this.onPress});
    
    final index;
    final Function onPress;

    @override
    Widget build(BuildContext context) {
        return Card(
            child: Column(
                children: <Widget>[
                    Text('Card $index'),
                    FlatButton(
                        child: const Text('Press'),
                        onPressed: this.onPress,
                    )
                ]
            )
        )
    }
}

```


### 相关文档 
- [Flutter的项目结构、资源、依赖和本地化](http://www.devio.org/2019/04/02/flutter-project-structure-resources-dependencies-and-localization/)
- [认识视图(Widgets)](http://www.devio.org/2019/03/16/flutter-views/)