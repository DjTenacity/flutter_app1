import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(new ViewContent());

class ViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("GridViewContent")),
          body: new GridViewContent(),
        ),
      ),
    );
  }
}
//GridView 创建网格列表有多种方式，下面我们主要介绍两种。
//    1、可以通过 GridView.count 实现网格布局
//    2、通过 GridView.builder 实现网格布局

class GridViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //注意
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0, //水平子 Widget 之间间距
          mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
          crossAxisCount: 3, //一行的 Widget 数量
        ),
        itemCount: listData.length,
        itemBuilder: this._getListData);
    return GridView.count(
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      // 宽度和高度的比例
      childAspectRatio: 0.7,
      children: this._getListData2(),
    );
    return GridView.count(
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      // childAspectRatio:0.7,  //宽度和高度的比例
      children: this._getListData3(),
    );

    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本')
      ],
    );
  }

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['ImageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  List<Widget> _getListData2() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
        // height: 400,  //设置高度没有反应
      ));
    }
    return list;
  }

  List<Widget> _getListData3() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),

        // height: 400,  //设置高度没有反应
      );
    });
    // ('xxx','xxx')
    return tempList.toList();
  }
}
