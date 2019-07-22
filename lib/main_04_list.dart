import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(new MyDynamicListApp());

class MyDynamicListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MyDynamicListApp")),
        body: DynamicListContent(),
      ),
    );
  }
}

class DynamicListContent extends StatelessWidget {
  List list = new List();

  DynamicListContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add("wo我爱你$i年");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
//
        itemCount: listData.length, itemBuilder: this._getListData);

    return ListView(children: this._getData());
    return ListView(children: this._getData2());
    return ListView(children: this._getData3());
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.list[index]),
          );
        });
  }

  List<Widget> _getData() {
    return [
      ListTile(
        title: Text("我IDJ"),
      ),
      ListTile(
        title: Text("我IDJ"),
      ),
      ListTile(
        title: Text("我IDJ"),
      )
    ];
  }

  List<Widget> _getData2() {
    List<Widget> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(title: Text("我爱$i Dj")));
    }
    return list;
  }

  List<Widget> _getData3() {
    var tempList = listData.map((value) {
      return ListTile(
        title: Text(value["title"]),
        leading: Image.network(value["imageUrl"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]["title"]),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
}
