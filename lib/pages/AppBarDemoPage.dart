import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          // backgroundColor: Colors.red,
          centerTitle: true,
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            onPressed: () {
//              print('menu');
//            },
//          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('settings');
              },
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text("第一个tab")),
                ListTile(title: Text("第一个tab")),
                ListTile(title: Text("第一个tab"))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第二个tab")),
                ListTile(title: Text("第二个tab")),
                ListTile(title: Text("第二个tab"))
              ],
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Expanded(
                      child: DrawerHeader(
                          child: Text("你好flutter"),
                          decoration:BoxDecoration(
                              color: Colors.yellow,
                              image: DecorationImage(
                                image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                                fit:BoxFit.cover,
                              )

                          )
                      )
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                    child: Icon(Icons.home)
                ),
                title: Text("我的空间"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                    child: Icon(Icons.people)
                ),
                title: Text("用户中心"),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                    child: Icon(Icons.settings)
                ),
                title: Text("设置中心"),
              ),
              Divider(),
            ],
          ),


        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),

      ),
    );
  }
}
