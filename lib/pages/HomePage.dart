import 'package:flutter/material.dart';

import '../main_08_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

//  @override
//  State<StatefulWidget> createState() {
//    return   _HomePageState();
//  }

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Chip(
            label: Text("${this.count}"),
          ),
          RaisedButton(
              child: Text("MyApp08"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp08()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),
          RaisedButton(
            child: Text("MyApp08"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp08(title: '我是跳转传值')));
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
