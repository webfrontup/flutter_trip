import 'package:flutter/material.dart';
import '../service/service_method.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  String homePageContent='正在获取数据';
  @override
//  void initState() {
//    getHomePageContent().then((val){
//      setState(() {
////        homePageContent=val['data']['data'].toString();
//        homePageContent=val['data'].toString();
//      });
//
//    });
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('百姓生活+'),
        ),
        body:FutureBuilder(
          future:getHomePageContent(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              print(111);
              print(snapshot);
              var data=json.decode(snapshot.data.toString());
              print(222);
              print(data);
              List<Map> swiperDataList = (data['data']['slides'] as List).cast(); // 顶部轮播组件数
              return Column(
                children: <Widget>[
                  SwiperDiy(swiperDataList:swiperDataList ),   //页面顶部轮播组件
                ],
              );
            }else{
              return Center(
                child: Text('加载中'),
              );
            }
          },
        )


    );
  }
}

// 首页轮播组件编写
class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  SwiperDiy({Key key,this.swiperDataList}):super(key:key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      height: ScreenUtil().setHeight(333),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network("${swiperDataList[index]['image']}",fit:BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}