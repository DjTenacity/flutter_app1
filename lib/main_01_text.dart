import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

//void main() {
//  runApp(new Center(
//    child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: new Text("ლ(′◉❥◉｀ლ)", textDirection: TextDirection.ltr)),
//  ));
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("loveDJ")),
        body: HomeContent2(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "loveDJ",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40.0, color: Colors.yellowAccent),
      ),
    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.cyan,
            border: Border.all(
              color: Colors.deepOrangeAccent,
            ),
            borderRadius: BorderRadius.all(
              //  Radius.circular(150),    //圆形
              Radius.circular(10.0),
            )),
        child: Text(
          "loveDJ , 想过去,现在, 未来.看人来人往,风卷残云.",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          // overflow:TextOverflow.fade ,
          maxLines: 2,
          textScaleFactor: 1.8,
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.yellowAccent,
              // color:Color.fromARGB(a, r, g, b)
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 5.0),
        ),
        // padding:EdgeInsets.all(20),

        // padding:EdgeInsets.fromLTRB(10.0, 30, 5, 0)

        margin: EdgeInsets.fromLTRB(10.0, 30.0, 5.0, 0.0),
        // transform:Matrix4.translationValues(10.00,0,0) //位移
        // transform:Matrix4.rotationZ(0.3) //旋转
        // transform:Matrix4.diagonal3Values(1.2, 1, 1)  xyz轴 缩放
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
