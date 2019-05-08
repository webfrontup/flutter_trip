import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("SearchBarDemo"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context:context,delegate: searchBarDelegate());
              },
            )
          ]
      ),

    );
  }
}
//  在点击图标时执行searchBarDelegate 类，这个类继承与SearchDelegate类，继承后要重写里边的四个方法。
class searchBarDelegate extends SearchDelegate<String>{
  // buildActions 方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = "",)
    ];
  }

  // 这个时搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，然后在点击时关闭整个搜索页面，代码如下。
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  // buildResults方法，是搜到到内容后的展现。
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  // 这个方法主要的作用就是设置推荐，就是我们输入一个字，然后自动为我们推送相关的搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }



}



