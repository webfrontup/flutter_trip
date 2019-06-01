import 'package:flutter/material.dart';
//import 'package:flutter_trip/dao/search_dao.dart';
//import 'package:flutter_trip/model/search_model.dart';
//import 'package:flutter_trip/pages/speak_page.dart';
//import 'package:flutter_trip/util/navigator_util.dart';
//import 'package:flutter_trip/widget/search_bar.dart';
//import 'package:flutter_trip/widget/webview.dart';

const TYPES = [
  'channelgroup',
  'gs',
  'plane',
  'train',
  'cruise',
  'district',
  'food',
  'hotel',
  'huodong',
  'shop',
  'sight',
  'ticket',
  'travelgroup'
];
const SEARCH_BAR_DEFAULT_TEXT = '网红打卡地 景点 酒店 美食';

///搜索页面
class SearchPage extends StatefulWidget {
  final bool hideLeft;
  final String searchUrl;
  final String keyword;
  final String hint;

  const SearchPage(
      {Key key, this.hideLeft, this.searchUrl, this.keyword, this.hint})
      : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String keyword;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }

}
