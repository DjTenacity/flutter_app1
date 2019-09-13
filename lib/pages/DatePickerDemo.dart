import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  var now = DateTime.now();
  DateTime nowDate = DateTime.now();

  String dateTime;

  _showDatepacker()  async {
    showDatePicker(
      context: context,
      initialDate: nowDate,
      firstDate: DateTime(2019),
      lastDate: DateTime(2023),
    ).then((result) {

    });
  }


  @override
  void initState() {
    super.initState();
    print(now);
    print(now.millisecondsSinceEpoch);
    print(DateTime.fromMicrosecondsSinceEpoch(now.millisecondsSinceEpoch));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("日期组件"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//          时间组件
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("昨夜今宵"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () {
                print("打开日期组件");
              },
            )
          ],
        )
    );
  }
}
