import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController typeController = TextEditingController();
  String showText = '欢迎你来到美好人间';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text('美好人间'),),
          // SingleChildScrollView: 一个可以滚动的widget框 没有组件实体
          body:SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller:typeController,
                      decoration:InputDecoration (
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: '美女类型',
                          helperText: '请输入你喜欢的类型'
                      ),
                      autofocus: false,
                    ),
                    RaisedButton(
                      onPressed:_choiceAction,
                      child: Text('选择完毕'),
                    ),
                    Text(
                      showText,
                      overflow:TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }

  void _choiceAction(){
    print('开始选择你喜欢的类型............');
    // 如果文本框的值为''
    if(typeController.text.toString()==''){
      showDialog(
          context: context,
          builder: (context)=>AlertDialog(title:Text('美女类型不能为空'))
      );
    }else{
      getHttp(typeController.text.toString()).then((val){
        setState(() {
          showText=val['data']['name'].toString();
        });
      });
    }

  }

  // https://time.geekbang.org/serv/v1/column/newAll

  Future getHttp(String TypeText)async{
    try{
      Response response;
      var data={'name':TypeText};
//      response = await Dio().get(
//          "https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian",
//          queryParameters:data
//      );
        response = await Dio().post(
          "https://easy-mock.com/mock/5cf1dad6e0e1875766c67ed8/example/dabaojian_post",
          queryParameters:data
        );
      return response.data;
    }catch(e){
      return print(e);
    }
  }
}
