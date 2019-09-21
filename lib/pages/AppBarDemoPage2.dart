import 'package:flutter/material.dart';
//import 'package:flutter_app/pages/Tabs.dart';

class AppBarDemoPage2 extends StatefulWidget {
  AppBarDemoPage2({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppBarDemoPage2();
  }
}

class _AppBarDemoPage2 extends State<AppBarDemoPage2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // length: 10,要跟下面tabs的长度对应
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  //多个按钮的话可以滑动
                  indicatorColor: Colors.blue,
                  labelColor: Colors.lightBlueAccent,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,

                  tabs: <Widget>[
                    Tab(text: "推荐0"),
                    Tab(text: "推荐1"),
                    Tab(text: "推荐2"),
                    Tab(text: "推荐2"),
                    Tab(text: "推荐3"),

                    Tab(text: "推荐4"),
                    Tab(text: "推荐5"),
                    Tab(text: "推荐6"),
                    Tab(text: "推荐7"),
                    Tab(text: "推荐8"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),

            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
                ListTile(
                  title: Text("第一个Tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
