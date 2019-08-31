import 'package:flutter/material.dart';

import '../../main_08_card.dart';
import '../../main_09_RaisedButton.dart';
import '../../main_10_StatefulWidget.dart';
import '../DatePickerPubDemo.dart';
import '../SwiperPage.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到 Mydemo07 页面"),
          onPressed: (){
            //路由跳转
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyApp08()));
          },
        ),
        SizedBox(height: 20.0),



        RaisedButton(
            child: Text("9-RaisedButton"),
            onPressed: () {
              //路由跳转
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp9()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),


        RaisedButton(
            child: Text("10-StatefulWidget"),
            onPressed: () {
              //路由跳转
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyStatefulWidgetApp()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        RaisedButton(
            child: Text("日期选择"),
            onPressed: () {
              //路由跳转
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DatePickerPubDemo()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),

        RaisedButton(
            child: Text("轮播图组件演示"),
            onPressed: () {
              //路由跳转
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SwiperPage()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),

      ],
    );
  }
}