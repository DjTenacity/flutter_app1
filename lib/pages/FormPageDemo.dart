import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  _FormDemoPage createState() => _FormDemoPage();
}

class _FormDemoPage extends State<FormDemoPage> {
  int sex = 1;
  String userName;

  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": false, "title": "编程"}
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]["title"] + ":"),
          Checkbox(
              value: this.hobby[i]["checked"],
              onChanged: (value) {
                setState(() {
                  this.hobby[i]["checked"] = value;
                });
              }),
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(vaule) {
    setState(() {
      sex = vaule;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登记表"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
              ),
//                  controller: username,
              onChanged: (value) {
                setState(() {
                  this.userName = value;
                });
              },
            ),
//
//
//                TextField(
//                  decoration: InputDecoration(
//                      labelText: " 请输入用户信息",
//                      border: OutlineInputBorder()),
//                  onChanged: (v) {
//                    setState(() {
//                      this.userName = v;
//                    });
//                  },
//                ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
//                      不需要括号 .表示赋值 , 加括号表示执行
                  onChanged: this._sexChanged,
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("女"),
                Radio(
                  value: 2,
                  onChanged: this._sexChanged,
                )
              ],
            ),

            SizedBox(height: 20),
            Column(
              children: this._getHobby(),
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("提交信息"),
                onPressed: () {
                  print(this.sex);
                  print(this.hobby);
                  print(this.userName);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
