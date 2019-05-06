- https://jspang.com/posts/2019/01/21/flutter-base2.html

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


### 如何加载静态图片，以及处理不同分辨率的图片
- 参考`http://www.devio.org/2019/04/02/flutter-project-structure-resources-dependencies-and-localization/`
- 要加载项目中的静态图片，需要两步：
> 在pubspec.yaml文件中声明图片资源的路径：
> 使用AssetImage访问图片：

- pubspec.yaml声明图片路径:
```
    assets:
        - lib/gallery/example_code.dart
        - images/my_icon.png
```
- 使用AssetImage访问图片：
```
Image(
    height: 26,
    width: 26,
    image: AssetImage(my_icon.png),
)
```
- 除了我们使用image的构造方法手动指定AssetImage之外，还可通过Image.asset来加载静态图片：
```yaml
Image(
    height: 26,
    width: 26,
    image: AssetImage(my_icon.png),
)
```
- 除了我们使用Image的构造方法手动指定AssetImage之外，还可通过Image.asset来加载静态图片：
```dart
Image.asset(my_icon.png,
    width: 26,
    height: 26
)
以上两者是等效的
```

### 如何加载本地图片
#### 加载完整路径的本地图片
```dart
import 'dart.io';
Image.file(File('/sdcard/Download/Stack.png')),
```
#### 加载相对路径的本地图片
- 在pubspec.yaml中添加path_provider插件：
```dart
import 'dart.io';
import 'package:path_provider/path_provider.dart';
// Image.file(File('/sdcard/Download/Stack.png')),
FutureBuilder(future: _getLocalFile("Download/Stack.png"),
    builder: (BuildContext context, AsyncSnapshot<File> snapshot){
        return snapshot.data!=null?Image.file(snapshot.data):Container()
    }
)
```
### 如何设置placeholder?
    为了设置Placeholder我们需要借助FadeInimage，它能够从内存，本地资源中加载placeholder
- 配置本地资源图片：
```yaml
    flutter:
        assets:
            assets/loading.gif
```
- 加载本地资源图片作为placeholder:
```dart
    FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: 'http://www.devio.org/img/avatar.png',
    )
```
### 如何配置图片缓存
    在Flutter中我们可以借助cached_network_image插件，来从网络上加载图片，并且将其缓存到本地，以供下次使用。
```dart
    import 'package:flutter/material.dart';
    import 'package:cached_network_image/cached_network_image.dart';
    void main() {
    runApp(MyApp());
    }
    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final title = 'Cached Images';

        return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
            title: Text(title),
            ),
            body: Center(
            child: CachedNetworkImage(
                placeholder:(context, url) => new CircularProgressIndicator(),
                imageUrl:
                'https://picsum.photos/250?image=9',
            ),
            ),
        ),
        );
    }
    }
```
### 如何加载Icon？
在Flutter中我们可以借助icon来加载icon
```dart
const Icon(this.icon,{
    Key key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
})
```
我们可以构造一个自己的iconData,也可以使用Flutter提供的material_fonts

### 使用icons
通过如下代码我们可以使用Flutter内置的material_fonts:
```dart
import 'package:flutter/material.dart';
void main() {
    runApp(new MaterialApp(home: new MyApp()));
}
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Icons"),
            ),
            body: new Center(
                child: new Icon(Icons.android,size: 100.0),
            ),
        );
    }
}
```
### 使用自定义的Icon
使用自定义的我们需要构造一个：
```dart
const IconData(
    this.codePoint, //必填参数，fonticon对应的16进制Unicode
    this.fontFamily, // 字体库系列
    this.fontPackage, //字体在哪个保重，不填仅在自己程序包中
    this.matchTextDirection: false, //图标是否按照图标回执方向显示
)
```
首先我们需要使用字体一样，在pubspec.yaml中配置我们的icon：
```yaml
fonts: 
    - family: devio
        fonts:
            - asset: fonts/devio.ttf
```
接下来就可以使用了:
```dart
    child: new Icon(new IconData(0xf5566,fontFamily: "devio"),size: 100.0,color: Colors.blueAccent,)
```

