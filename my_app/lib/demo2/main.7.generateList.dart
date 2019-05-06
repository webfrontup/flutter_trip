import 'package:flutter/material.dart';
// 在main函数的runApp中调用了MyApp类，
// 再使用类的使用传递了一个items参数,
// 并使用generate生成器对items进行赋值
void main () => runApp(MyApp(
    // 这里使用的是一个List传递，
    // 然后直接用List中的generate方法进行生产List里的元素。
    // 最后的结果是生产了一个带值的List变量。
    // generate方法传递两个参数，第一个参数是生成的个数，第二个是方法。
    items: new List<String>.generate(100, (i)=> "Item $i")
));

class MyApp extends StatelessWidget{
  //  这是一个构造函数，除了Key，我们增加了一个必传参数，
  //  这里的@required意思就必传。
  //  :super如果父类没有无名无参数的默认构造函数，
  //  则子类必须手动调用一个父类构造函数。
  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key);
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'ListView widget',
      home:Scaffold(
          appBar: new AppBar(
            title: new Text('ListView Widget'),
          ),
          body:new ListView.builder(
              itemCount:items.length,
              itemBuilder:(context,index){
                return new ListTile(
                  title:new Text('${items[index]}'),
                );
              }
          )
      ),
    );
  }
}