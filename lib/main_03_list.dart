import 'package:flutter/material.dart';

void main() => runApp(new MyListApp());

class MyListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FlutterListDemo")),
        body: ListContent2(),
      ),
    );
  }
}

class ListContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.orange,
          ),
          Container(
            width: 180.0,
            color: Colors.redAccent,
            child: ListView(
              children: <Widget>[
                Image.network(
                    "https://mmbiz.qpic.cn/mmbiz_jpg/z1ViaEyjXTiaul0D8YkRE4zhl"
                    "KboY4lj5WtaU0Qd7v9zfiaAh1cicqEBib6iaME3hoTulx87co566m"
                    "lQyIpIXIrJIC0w/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
                Text("怪人DJ")
              ],
            ),
          ),
          Container(
            width: 180.0,
            color: Colors.greenAccent,
          ),
          Container(
            width: 180.0,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}

class ListContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.yellow,
          ),
          title: Text(
            "美团Java面试154道题分享！",
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Text("Java集合22题"),
        ),
        ListTile(
          leading: Icon(Icons.settings, size: 40),
          title: Text("美团Java面试154道题分享！"),
          subtitle: Text("JVM与调优 21题"),
        ),
        ListTile(
          leading: Icon(Icons.pages, size: 40),
          title: Text("美团Java面试154道题分享！"),
          subtitle: Text("设计模式 10题"),
        )
      ],
    );
  }
}

class ListContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
            "https://upload-images.jianshu.io/upload_images/1785445-8756b0f4656"
            "0d141.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/240"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
            "https://upload-images.jianshu.io/upload_images/1785445-ca42d00b7"
            "7f37fc6.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/300/h/240"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
            "https://mmbiz.qpic.cn/mmbiz/CvQa8Yf8vq27KJ7pe3fSVIvrHkSictxEY2ECVKeKib"
            "PshBIrTqGVoK9Eh6TBmdHLqW5zPg6te9YDDU9HwvuawicDw/640?"
            "wx_fmt=other&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
        Image.network(
            "https://mmbiz.qpic.cn/mmbiz/CvQa8Yf8vq27KJ7pe3fSVIvrHkSictxEY9Lbmab7HRF"
            "9TJjRKDIgZSQWO4ViaszJBcWcXLZBBCG9NYgpu00oFibcw/"
            "640?wx_fmt=other&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
        Image.network(
            "https://mmbiz.qpic.cn/mmbiz/CvQa8Yf8vq27KJ7pe3fSVIvrHkSictxEY7uEXd"
            "uqrTejs0GlGzPYPvIw4yLyAYYSgEO0QibZauWAgsAk4R4sorNw/640?"
            "wx_fmt=other&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1"),
      ],
    );
  }
}
