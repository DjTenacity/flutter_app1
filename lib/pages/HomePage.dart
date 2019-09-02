import 'package:flutter/material.dart';

import '../main_01_text.dart';
import '../main_02_image.dart';
import '../main_03_list.dart';
import '../main_04_list.dart';
import '../main_05_gridview.dart';
import '../main_06_expanded.dart';
import '../main_07_stack.dart';
import '../main_08_card.dart';
import '../main_09_RaisedButton.dart';

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
//          Chip(
//            label: Text("${this.count}"),
//          ),
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
          SizedBox(height: 20.0),
          RaisedButton(
              child: Text("Mydemo07"),
              onPressed: () {
                Navigator.pushNamed(context, '/Mydemo07');
              },
              textTheme: ButtonTextTheme.primary),
          SizedBox(height: 20.0),
          RaisedButton(
              child: Text("product"),
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
              textTheme: ButtonTextTheme.primary),
          SizedBox(height: 20.0),
          RaisedButton(
              child: Text("8-CardDemo"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CardDemo()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),

          RaisedButton(
              child: Text("1-text"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomeContent2()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),

          RaisedButton(
              child: Text("2-image"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ImageContent1()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),

          RaisedButton(
              child: Text("3-list"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ListContent3()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),
          RaisedButton(
              child: Text("4-list"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyDynamicListApp()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),

          RaisedButton(
              child: Text("5-gridview"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GridViewContent()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),


          RaisedButton(
              child: Text("6-expanded"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LayoutDemo4()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),

          RaisedButton(
              child: Text("7-stack"),
              onPressed: () {
                //路由跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Mydemo07()));
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),


        ],
      ),
    );
  }
}
