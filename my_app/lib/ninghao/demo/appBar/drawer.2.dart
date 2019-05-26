import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
        )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton( //自己添加的leading
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigration',
//            onPressed: () => debugPrint('Navigration button is pressed.'),
//          ),
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('yyccQQu', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('aabb.com'),
                currentAccountPicture: CircleAvatar( // 头像
                  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                decoration: BoxDecoration(// 背景
                  color: Colors.yellow[400],
                  // 背景图片
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,  //使背景充满
                    colorFilter: ColorFilter.mode(
                        // 参数为颜色和混合模式
                        Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
                  ),
                ),
              ),
              ListTile( // 抽屉内容
                title: Text('Message', textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
                onTap: () => Navigator.pop(context), //点击关闭抽屉
              ),
              ListTile( // 抽屉内容
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile( // 抽屉内容
                title: Text('Settings', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
//        endDrawer: Text('This is drawer'),
      ),
    );
  }
}

