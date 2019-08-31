import 'package:flutter/material.dart';

void main() => runApp(MyStatefulWidgetApp());

class MyStatefulWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: HomePage(),
    ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200.0),
        Chip(
          label: Text('${this.countNum}'),
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              //这个方法只有有状态组件里面才有
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}

class _HomePageState1 extends State<HomePage> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据2');
            });
          },
        )
      ],
    );
  }
}

class HomePage2 extends StatelessWidget {
  int countNum = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200.0),
        Text("${this.countNum}"),
        SizedBox(height: 20.0),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            // setState()   //错误写法       没法改变页面里面的数据
            this.countNum++;
            print(this.countNum);
          },
        )
      ],
    );
  }
}
