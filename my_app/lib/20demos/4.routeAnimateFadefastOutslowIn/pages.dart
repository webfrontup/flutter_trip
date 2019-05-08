//主入口文件用import引入了pages.dart文件，
// 这个文件就是生成了两个页面（Flutter里的页面也是Widget,这个你要跟网页区分开）。
// 有了两个页面就可以实现路由跳转了。

import 'package:flutter/material.dart';
import 'package:my_app/20demos/4.routeAnimateFadefastOutslowIn/custome_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar:AppBar(
          title:Text('FirstPage',style: TextStyle(fontSize: 36.0)),
//        elevation:  这个值是AppBar 滚动时的融合程度，一般有滚动时默认是4.0，
//        现在我们设置成0.0，就是和也main完全融合了。
          elevation: 0.0,
        ),
        body:Center(
          child: MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color:Colors.white,
              size:64.0,
            ),
            onPressed: (){
              Navigator.of(context).push(CustomRoute(SecondPage()));
            },
          ),
        )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text('SecondPage',style:TextStyle(fontSize:36.0),),
          backgroundColor: Colors.pinkAccent,
          leading:Container(),
          elevation: 0.0,
        ),
        body:Center(
          child: MaterialButton(
            child: Icon(
                Icons.navigate_before,
                color:Colors.white,
                size:64.0
            ),
            onPressed: ()=>Navigator.of(context).pop(),
          ),
        )
    );
  }
}