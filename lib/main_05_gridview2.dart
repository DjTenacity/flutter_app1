import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
//      home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("....."),
//          ),
//          body: new LayoutDemo()),

      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child:
//        new Column(
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[

        GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            new Column(
//                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Image.network(
                            "http://heroes.nos.netease.com/a/images/2018/7/31/dee6b697b037c3351d69c31757984a63.png",
                            fit: BoxFit.cover),
                      )),
                  Expanded(
                      child: Container(
                        child: new Text("怀特迈恩头像"),
                      )),
//                  new Image.network(
//                      "http://heroes.nos.netease.com/a/images/2018/7/31/dee6b697b037c3351d69c31757984a63.png"),
//                  new Text("怀特迈恩头像")
                ]),
            new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.network(
                      "http://heroes.nos.netease.com/a/images/2018/7/31/3a6faca9e816605e88b7626f231de96c.png"),
                  Expanded(
                      child: Container(
                        child: new Text("怀特迈恩头像"),
                      )),
                ]),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: new Image.network(
                            "http://heroes.nos.netease.com/a/images/2018/7/31/f6b65bb2a02dc29757fe3dc49dafba9a.png"),
                      )),
                  new Text("怀特迈恩头像")
                ]),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                      "http://heroes.nos.netease.com/a/images/2018/7/31/dee6b697b037c3351d69c31757984a63.png"),
                  new Text("怀特迈恩头像")
                ]),
            new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.network(
                      "http://heroes.nos.netease.com/a/images/2018/7/31/3a6faca9e816605e88b7626f231de96c.png"),
                  Expanded(
                      child: Container(
                        child: new Text("怀特迈恩头像"),
                      )),
                ]),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: new Image.network(
                            "http://heroes.nos.netease.com/a/images/2018/7/31/f6b65bb2a02dc29757fe3dc49dafba9a.png"),
                      )),
                  new Text("怀特迈恩头像")
                ]),
          ],
        ),

//            GridView.count(
//              crossAxisSpacing: 20.0,
//              mainAxisSpacing: 20.0,
//              padding: EdgeInsets.all(10.0),
//              crossAxisCount: 2,
//              // 宽度和高度的比例
//              childAspectRatio: 0.7,
//              children: this._getListData2(),
//            ),

//            new Image.network(
//              "http://heroes.nos.netease.com/a/images/2018/7/31/dee6b697b037c3351d69c31757984a63.png",
//              height: 110.0,
//              width: 110.0,
//            ),
//            new Text("怀特迈恩头像"),
//            new Text(
//              'You have pushed the button this many times:',
//            ),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
        //        ],
        //   ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  var listData = [
    "1",
    "2",
    "list",
    "GridView",
    "Column",
    "1",
    "2",
    "list",
    "GridView",
    "Column"
  ];

  List<Widget> _getListData2() {
    List<Widget> list = new List();

    for (var i = 0; i < listData.length; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          listData[i],
          style: TextStyle(color: Colors.black26, fontSize: 20.0),
        ),
        color: Colors.blue,
        height: 100.0, //设置高度没有反应
      ));
    }
    return list;
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180.0,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 180.0,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover),
                )),
            SizedBox(width: 10.0),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180.0,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85.0,
                          child: Image.network(
                              "https://www.itying.com/images/flutter/3.png",
                              fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 85.0,
                          child: Image.network(
                              "https://www.itying.com/images/flutter/4.png",
                              fit: BoxFit.cover),
                        )
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
