### 要点
- Scaffold
- PageView
- http
- Navgator
- NotificationListener
- 自定义组件
- Native Modules
- AI智能语音
- Channel通信
- 混合开发
- 插件
- 官方组件

### 直接启动模拟器
- mac上列出你安装的所有可用的设备 `xcrun instruments -s`
- 开启指定模拟器 `xcrun instruments -w "iPhone Xʀ (12.2)"`


### Flutter项目的创建
- Dart语法查询 http://dart.goodev.org/guides/language/language-tour
- 以ReactNative为例 可通过 `create-react-native-app` 脚手架完成 `create-react-native-app <ProjectName>`
- 通过命令行使用 `flutter create <ProjectName>`

### 如何运行Flutter项目？
- 在ReactNative中，我们可以通过命令来运行项目：`react-native run-ios` || `react-native run-android`
- 在Flutter中, 从项目根目录使用 `flutter run`, 通过`flutter run -d 'iPhone X'` (-d后面跟的具体设备名称可以使模拟器的名字，也可以是一台链接到电脑上的Android或OS的设备)
- 你想要打开某一个虚拟器的时候 请提前切换至对应虚拟器 不然有时候(在你第一次使用虚拟器的时候)会报虚拟器找不到 `flutter run -d 'iPhone Xs Max'`

- 当你打开flutter-example中任何一个项目的时候出现
```
Because flutter_gallery requires SDK version >=2.2.0 <3.0.0, version solving failed.
```
依次执行这两个命令 `flutter channel master` `flutter upgrade`

### 构建布局
- https://flutterchina.club/tutorials/layout/#step-0

### 撤销远端提交
- git push origin <分支名> --force

