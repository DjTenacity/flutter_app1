import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> list = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图组件演示'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    this.list[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: list.length, pagination: new SwiperPagination(),
                autoplay: true, // control: new SwiperControl(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
