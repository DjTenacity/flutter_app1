import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key}) :super(key: key);

//  @override
//  State<StatefulWidget> createState() {
//    return   _HomePageState();
//  }

  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends  State<HomePage>{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Chip(
            label: Text("${this.count}"),
          )
        ],
      ),
    );
  }
}