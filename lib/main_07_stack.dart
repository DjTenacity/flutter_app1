import 'package:flutter/material.dart';

//void main() => runApp(Mydemo07());

class Mydemo07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(" demo"),
      ),
      body: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              //  left: 10,
              child: Icon(Icons.home, size: 40.0, color: Colors.white),
            ),
            Positioned(
              bottom: 0.0,
              left: 100.0,
              child: Icon(Icons.search, size: 30.0, color: Colors.white),
            ),
            Positioned(
              right: 0.0,
              child: Icon(Icons.settings_applications,
                  size: 30.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment(1.0, -0.2),
              child: Icon(Icons.home, size: 40.0, color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search, size: 30.0, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.settings_applications,
                  size: 30.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class LayoutDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
//        alignment: Alignment.topLeft,
        alignment: Alignment(1.0, 0.3),

        children: <Widget>[
          Container(
            height: 400.0,
            width: 300.0,
            color: Colors.red,
          ),
          Text('我是一个文本', style: TextStyle(fontSize: 40.0, color: Colors.white))
        ],
      ),
    );
    ;
  }
}
