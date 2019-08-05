import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通按钮'),
                  onPressed: () {
                    print('点击了');
                  },
                ),
                SizedBox(width: 20.0),
                RaisedButton(
                  child: Text('有颜色的按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('点击了');
                  },
                ),
                SizedBox(width: 20.0),
                RaisedButton(
                  child: Text('阴影按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  elevation: 10.0,
                  onPressed: () {
                    print('点击了');
                  },
                )
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 60.0,
                    width: 20.0,
                    child: RaisedButton(
                      child: Text('有宽高的按钮'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      elevation: 10.0,
                      onPressed: () {
                        print('点击了');
                      },
                    ))
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 60.0,
                  margin: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    child: Text('全屏按钮'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    elevation: 10.0,
                    onPressed: () {
                      print('点击了');
                    },
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 60.0,
                  margin: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    child: Text('带圆角的按钮'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      print('点击了');
                    },
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
