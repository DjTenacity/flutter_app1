import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("loveDJ")),
        body: ImageContent1(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class ImageContent0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.asset(
          'image/a.jpg',
          colorBlendMode: BlendMode.screen,
          fit: BoxFit.cover,
        ),
        height: 300.0,
        width: 300.0,
      ),
    );
  }
}

class ImageContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.network(
          "https://mmbiz.qpic.cn/mmbiz_jpg/z1ViaEyjXTiaul0D8YkRE4zhlKboY4lj5W"
          "taU0Qd7v9zfiaAh1cicqEBib6iaME3hoTulx87co566mlQyIpIXIrJIC0w/640?"
          "wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1",
          alignment: Alignment.bottomRight,
          colorBlendMode: BlendMode.screen,
          color: Colors.blue,
          fit: BoxFit.cover,
        ),
        width: 300.0,
        height: 800.0,
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}

class ImageContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
//        容器
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(150.0),
            image: DecorationImage(
                image: NetworkImage(
                    "https://mmbiz.qpic.cn/mmbiz_jpg/z1ViaEyjXTiaul0D8YkRE4zhl"
                    "KboY4lj5WtaU0Qd7v9zfiaAh1cicqEBib6iaME3hoTulx87co566ml"
                    "QyIpIXIrJIC0w/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class ImageContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: ClipOval(
        child: Image.network(
          "https://mmbiz.qpic.cn/mmbiz_jpg/z1ViaEyjXTiaul0D8YkRE4zhl"
          "KboY4lj5WtaU0Qd7v9zfiaAh1cicqEBib6iaME3hoTulx87co566ml"
          "QyIpIXIrJIC0w/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1",
          height: 100.0,
          width: 100.0,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
