import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
//  debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(me());
}


class me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('我的',style:TextStyle(fontSize:24.0),),
          backgroundColor: Colors.lightBlueAccent,
          leading:Container(),
          elevation: 0.0,
        ),
        body: TopCards(),
      ),


    );

  }
}

class TopCards extends StatefulWidget {
  @override
  _TopCardsState createState() => _TopCardsState();
}

class _TopCardsState extends State<TopCards> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 200,
//      color: Colors.black54,
      child: new Card(
        color: Colors.black54,
        child: Column(
          children: <Widget>[
            ListTile(
              title:new Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: new Text('技术胖:1513938888'),
              leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
//              contentPadding: const EdgeInsets.fromLTRB(15,30,15,30),

            ),
          ],
        ),
      ),
    );
  }
}




