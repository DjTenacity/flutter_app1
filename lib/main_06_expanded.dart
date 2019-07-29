import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https: //www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https: //www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https: //www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover),
            )
          ],
        ));
  }
}

//自定义按钮组件
class LayoutDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconContainer(Icons.search, color: Colors.black);
  }
}


//自定义按钮组件
class LayoutDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return CustomButton(Icons.search, color:Colors.black);
    return Container(
      height: 900.0,
      width: 300.0,
      color: Colors.pink,
      child: Column(
        //主轴的排序方式
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //次轴的排序方式
        crossAxisAlignment: CrossAxisAlignment.start, //用的比较少
        children: <Widget>[
          IconContainer(Icons.search, color: Colors.blue),
          IconContainer(Icons.home, color: Colors.orange),
          IconContainer(Icons.select_all, color: Colors.red),
        ],
      ),
    );
  }
}
// Flutter Expanded 类似 Web 中的 Flex布局
class LayoutDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: <Widget>[
        Expanded(
            flex: 1,
            child: IconContainer(Icons.search,color: Colors.blue)
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.home,color: Colors.orange),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.select_all,color: Colors.red),
        ),

      ],
    );
  }
}
class LayoutDemo5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home,color: Colors.orange),
        ),
        IconContainer(Icons.search,color: Colors.blue)

      ],
    );
  }
}


class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
// icon  毕传color和size是可选的
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child:
          Center(child: Icon(this.icon, size: this.size, color: Colors.white)),
    );
  }
}

class LayoutDemo7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text("你好啊"),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
