import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void dispose() {   //销毁的时候 生命周期函数
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {   //组件初始化  生命周期函数
    super.initState();
    _tabController=new TabController(
        vsync: this,
        length: 2
    );
    // _tabController.addListener((){

    //   print(_tabController.index);
    // });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,  //注意
          tabs: <Widget>[
            Tab(text:"热销"),
            Tab(text:"推荐"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,  //注意
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐"))

        ],
      ),
    );
  }
}