import 'package:flutter/material.dart';

class LYAlign extends StatelessWidget {
  const LYAlign();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Align"),
        leading: new BackButton(),
      ),
      body: new LYAlignContent(),
    );
  }
}

class LYAlignContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.red,
      child: new Align(
//      都是从上层容器的左上角开始算起的
        alignment: const Alignment(1.0, 0.5),
        // 如果非null，将其宽度设置为子元素的宽度乘以这个因子。 可以大于或小于1.0，但必须是正数。
        widthFactor: 3.0,
        heightFactor: 3.0,
        child: new Container(
          child: new Text("Align"),
          color: Colors.amber,
        ),
      ),
    );
  }
}
