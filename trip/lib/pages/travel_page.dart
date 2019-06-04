import 'package:flutter/material.dart';
import 'package:trip/dao/travel_tab_dao.dart';
import 'package:trip/model/travel_tab_model.dart';
import 'package:trip/pages/travel_tab_page.dart';

///旅拍页面
class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  List<TravelTab> tabs = [];
  TravelTabModel travelTabModel;

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//  初始化tab数据
  void _loadData() async {
    _controller = TabController(length: 0, vsync: this);
    try {
      TravelTabModel model = await TravelTabDao.fetch();
      _controller = TabController(
          length: model.tabs.length, vsync: this); //fix tab label 空白问题
      setState(() {
        tabs = model.tabs;
        travelTabModel = model;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 30),
            child: TabBar(
                controller: _controller,
                isScrollable: true,
                labelColor: Colors.black,
                labelPadding: EdgeInsets.fromLTRB(20, 0, 10, 5),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Color(0xff1fcfbb), width: 3),
                    insets: EdgeInsets.only(bottom: 10)),
                tabs: tabs.map<Tab>((TravelTab tab) {
                  return Tab(
                    text: tab.labelName,
                  );
                }).toList()),
          ),
          Flexible(
            child: TabBarView(
                controller: _controller,
                children: tabs.map((TravelTab tab) {
                  return TravelTabPage(
                    travelUrl: travelTabModel.url,
                    params: travelTabModel.params,
                    groupChannelCode: tab.groupChannelCode,
                    type: tab.type,
                  );
                }).toList()),
          )
        ],
      ),
    );
  }
}
