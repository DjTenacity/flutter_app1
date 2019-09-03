import 'package:flutter/material.dart';
import 'package:flutter_app/pages/AppBarDemoPage.dart';
import 'HomePage.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
//          leading: Icon(Icons.access_alarm),
        leading: IconButton(
          icon: Icon(Icons.access_alarm),
          onPressed: () {
            print("Icons.access_alarm");
            Navigator.pushNamed(context, '/appBarDemo');
//            Navigator.of(context).push(
//                MaterialPageRoute(builder: (context) => AppBarDemoPage()));
          },
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(
//          Icons.add,
//          color: Colors.black26,
//          size: 44,
//        ),
//      ),
      floatingActionButton: Container(
        width: 75,
        height: 75,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: this._currentIndex==1?Colors.red:Colors.blue,
          onPressed: () {
              // 重新渲染
            setState(() {
              //改变状态 , 重新渲染
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        //icon的大小
        fixedColor: Colors.red,
        //选中的颜色
        type: BottomNavigationBarType.fixed,
        //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}
