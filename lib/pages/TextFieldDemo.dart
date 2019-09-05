import 'package:flutter/material.dart';

class TextFiledDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFiledDemo();
  }
}

class _TextFiledDemo extends State<TextFiledDemo> {
  var username = new TextEditingController();
  var flag = true;

  var password;

  @override
  void initState() {
    super.initState();
    username.text = "我爱DJ节奏";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("表单演示页面"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
//          child: TextFiledDemo2()
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "请输入用户名",
                  border: OutlineInputBorder(),
                ),
                controller: username,
                onChanged: (value) {
                  setState(() {
                    username.text = value;
                  });
                },
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "密码"),
                onChanged: (value) {
                  setState(() {
                    this.password = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text("登录"),
                  onPressed: () {
                    print(this.username.text);
                    print(this.password);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              TextFiledDemo2(),
              Wrap(
                children: <Widget>[
                  Checkbox(
                    value: this.flag,
                    onChanged: (v) {
                      setState(() {
                        this.flag = v;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                  Text(this.flag?"选中":"未选中")
                ],
              ),
//              Row(
//                children: <Widget>[
//                  Text(this.flag?"选中":"未选中")
//                ],
//              ),
              SizedBox(height: 5),
              Divider(),
              CheckboxListTile(
                  value: this.flag,
                  onChanged: (v){
                    setState(() {
                      this.flag=v;
                    });
                  },
                  title: Text("标题"),
                  subtitle:Text("这是二级标题") ,
                  secondary:Icon(Icons.help)
              )
            ],
          )),
    );
  }
}

class TextFiledDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 48,
          margin: EdgeInsets.only(bottom: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "请输入用户名",
              border: OutlineInputBorder(),
            ),
            style: TextStyle(fontSize: 13.0, color: Colors.yellowAccent),
          ),
          color: Colors.lightGreen,
        ),
//        TextField(
//          decoration: InputDecoration(
//            labelText: "请输入用户名",
//            border: OutlineInputBorder(),
//          ),
//        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          maxLines: 2,
          decoration: InputDecoration(
            hintText: "说: 你是猪",
            labelText: "密码",
            border: OutlineInputBorder(),
          ),
        ),
//        SizedBox(
//          height: 10,
//        ),
//        TextField(
//          obscureText: true,
//          decoration: InputDecoration(
//            hintText: "请输入密码",
//            border: OutlineInputBorder(),
//          ),
//        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock_outline),
            labelText: "密码",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
