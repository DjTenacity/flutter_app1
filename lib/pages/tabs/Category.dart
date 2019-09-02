import 'package:flutter/material.dart';

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
            child: Text("日期选择"),
            onPressed: () {
              //路由跳转
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DatePickerPubDemo()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        SizedBox(height: 20.0),
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