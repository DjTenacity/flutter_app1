import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RadioDemo();
  }
}

class _RadioDemo extends State<RadioDemo> {
  int sex = 1;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioDemo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("男:"),
                Radio(
                  value: 1,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20),
                Text("女:"),
                Radio(
                  value: 2,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text("${this.sex}"),
                Text(this.sex == 1 ? "男" : "女")
              ],
            ),
            SizedBox(height: 40),
            RadioListTile(
              value: 1,
              groupValue: this.sex,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              title: Text("标题"),
              subtitle: Text("这是二级标题"),
              secondary: Icon(Icons.help),
              selected: this.sex == 1,
            ),
            RadioListTile(
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text("标题"),
              subtitle: Text("这是二级标题"),
              secondary:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
              selected: this.sex == 2,
            ),
            SizedBox(height: 40),
            Switch(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  print(v);
                  this.flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
