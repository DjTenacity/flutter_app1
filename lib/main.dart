import 'package:flutter/material.dart';

import 'Routes/Routes.dart';
import 'pages/Tabs.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:Tabs(),
      initialRoute: '/', //初始化的时候加载的路由 '/': (context) => Tabs(),
      onGenerateRoute: onGenerateRoute,
//        routes: {
//          '/form':(context)=>FormPage(),
//          '/search':(context)=>SearchPage(),
//        }
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: Tabs(),
//      debugShowCheckedModeBanner:false ,  //去掉debug图标
////        home:Tabs2()
//    );
//  }
//}

class Tabs2 extends StatefulWidget {
  Tabs2({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Text("tabBar"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}

class _TabsState2 extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Text("tabBar"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (int index) {
          print(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Demo"),
          ),
          body: Text("tabBar"),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text("分类")),
              BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
            ],
          ),
        ));
  }
}
