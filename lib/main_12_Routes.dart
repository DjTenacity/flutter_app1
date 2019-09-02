import 'package:flutter/material.dart';


import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:Tabs(),
        initialRoute: '/', //初始化的时候加载的路由 '/': (context) => Tabs(),
        onGenerateRoute: onGenerateRoute,
//        routes: {
//          '/form':(context)=>FormPage(),
//          '/search':(context)=>SearchPage(),
//        }
    );
  }
}


/**
 *
 *
    ### 一、Flutter中返回到上一级页面

    `Navigator.of(context).pop();`

    ### 二、Flutter中替换路由

    比如我们从用户中心页面跳转到了 registerFirst 页面，然后从 registerFirst 页面
    通过 pushReplacementNamed 跳转到了 registerSecond 页面。
    这个时候当我们点击 registerSecond 的返回按钮的时候它会直接返回到用户中心。
    registerSecond 替代 registerFirst

    `Navigator.of(context).pushReplacementNamed('/registerSecond');`

    ### 三、Flutter 返回到根路由

    比如我们从用户中心跳转到 registerFirst 页面，然后从 registerFirst 页面
    跳转到 registerSecond 页面，然后从 registerSecond 跳转到了 registerThird 页面。
    这个时候我们想的是 registerThird 注册成功后返回到用户中心。
    这个时候就用到了返回到根路由的方法。

    ```dart
    Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(builder: (context) =>
       new Tabs(index:1)), (route) => route == null
    );
    ```
 *
 *
 * **/