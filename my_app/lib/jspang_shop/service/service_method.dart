import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';


Future getHomePageContent() async{

  try{
    print('开始获取首页数据...............');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType=ContentType.parse("application/json");
//    dio.options.contentType=ContentType.parse("application/x-www-urlencoded");
    var formData = {'lon':'115.02932','lat':'35.76189'};
    response = await dio.get(
        servicePath['homePageContext'],
//        queryParameters: formData
//        queryParameters:{'name':'aabb'}
    );
    if(response.statusCode==200){
      print('aaaaaa');
      print(response.data);
      return response;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>${e}');
  }

}


