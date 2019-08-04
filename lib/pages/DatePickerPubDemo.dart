import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker. dart';

// 导入包说明  https://github.com/wuzhendev/flutter-cupertino-date-picker/blob/master/README_zh-cn.md

class DatePickerPubDemo extends StatefulWidget {
  DatePickerPubDemo({Key key}) : super(key: key);

  _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1990-05-12'),
      maxDateTime: DateTime.parse("2021-11-25"),
      initialDateTime: _dateTime,
      dateFormat: 'yyyy-MMMM-dd',
      //配置 Datetime Picker // dateFormat: 'yy 年 M 月 d 日 EEE,H 时:m 分', // pickerMode: DateTimePickerMode.datetime,
      locale: DateTimePickerLocale.zh_cn,
      onCancel: () {
        debugPrint('onCancel');
      },
      onCancel: () {
        debugPrint('onCancel');
      },
      // onChange: (dateTime, List<int> index) { // print(dateTime); // setState(() { //  _dateTime = dateTime; // }); // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期选择"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text("${formatDate(_dateTime, [yyyy, '-', mm, '-', dd])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
