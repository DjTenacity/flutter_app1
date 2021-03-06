import 'package:flutter/material.dart';
import 'res/listData.dart';

class MyApp08 extends StatelessWidget {
  String title = 'FlutterDemo8';

  MyApp08({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    // MaterialApp( home: )
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(title: Text(this.title)),
      body: LayoutDemo(),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(" 老师"),
            accountEmail: Text("qwewewq@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://www.itying.com/images/flutter/3.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.itying.com/images/flutter/2.png"),
                    fit: BoxFit.cover)),
            otherAccountsPictures: <Widget>[
              Image.network("https://www.itying.com/images/flutter/4.png"),
              Image.network("https://www.itying.com/images/flutter/5.png"),
              Image.network("https://www.itying.com/images/flutter/6.png")
            ],
          ),
          ListTile(
            title: Text("个人中心"),
            leading: CircleAvatar(child: Icon(Icons.people)),
          ),
          Divider(),
          ListTile(
            title: Text("系统设置"),
            leading: CircleAvatar(child: Icon(Icons.settings)),
          )
        ],
      )),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"])),
                title: Text(value["title"]),
                subtitle: Text(value["author"],
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

// AspectRatio 根据设置调整子元素 child 的宽高比。
class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200.0,
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

// Card 卡片组件块，内容可以由大多数类型的 Widget 构成，Card 具有圆角和阴影，这让它看起来有立体感
class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28.0)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28.0)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover,
                      height: 60.0,
                      width: 60.0),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png')),
                title: Text("xxxxxxxx"),
                subtitle: Text("xxxxxxxxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
