// 自定义的路由方法，自定义首先要继承于通用的路由的构造器类PageRouterBuilder。
// 继承之后重写父类的CustomRoute构造方法。

import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder{
  final Widget widget;
  CustomRoute(this.widget)
      :super(
//    transitionDuration：设置动画持续的时间
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){
//        FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
//          return ScaleTransition(
//  //        animate 动画的样式，一般使用动画曲线组件（CurvedAnimation）。
//            opacity: Tween(begin:0.0,end :1.0).animate(CurvedAnimation(
//                parent:animation1,
//  //            curve: 设置动画的节奏
//                curve:Curves.fastOutSlowIn
//            )),
//            child: child,
//          );

//      缩放路由动画
//        return ScaleTransition(
//            scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
//                parent:animation1,
//                curve: Curves.fastOutSlowIn
//            )),
//            child:child
//        );

//      旋转+缩放路由动画
//      在一个路由动画里的child属性里再加入一个动画，让两个动画同时执行
//        return RotationTransition(
//            turns:Tween(begin:0.0,end:1.0)
//                .animate(CurvedAnimation(
//                parent: animation1,
//                curve: Curves.fastOutSlowIn
//            )),
//            child:ScaleTransition(
//              scale:Tween(begin: 0.0,end:1.0)
//                  .animate(CurvedAnimation(
//                  parent: animation1,
//                  curve:Curves.fastOutSlowIn
//              )),
//              child: child,
//            )
//        );

//      左右滑动路由动画
// 幻灯片路由动画
          return SlideTransition(
            position: Tween<Offset>(
                begin: Offset(-1.0, 0.0),
                end:Offset(0.0, 0.0)
            )
                .animate(CurvedAnimation(
                parent: animation1,
                curve: Curves.fastOutSlowIn
            )),
            child: child,
          );

      }

  );
}



