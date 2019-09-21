/*

前面介绍Dart基础知识的时候基本上都是在一个文件里面编写Dart代码的，但实际开发中不可能这么写，模块化很重要，所以这就需要使用到库的概念。

在Dart中，库的使用时通过import关键字引入的。

library指令可以创建一个库，每个Dart文件都是一个库，即使没有使用library指令来指定。


Dart中的库主要有三种：

    1、我们自定义的库
          import 'lib/xxx.dart';
    2、系统内置库
          import 'dart:math';
          import 'dart:io';
          import 'dart:convert';
    3、Pub包管理系统中的库
        https://pub.dev/packages
        https://pub.flutter-io.cn/packages
        https://pub.dartlang.org/flutter/

        1、需要在自己想项目根目录新建一个pubspec.yaml
        2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
        3、然后运行 pub get 获取包下载到本地
        4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用


*/
import 'dart:math';
import 'dart:io';
import 'dart:convert';


void main() async{
  var result = await getDataFromZhihuAPI();
  print(result);
}

/*
async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字

async是让方法变成异步。
await是等待异步方法执行完成。
*/


//异步方法
//api接口： http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async{
  //1、创建HttpClient对象
  var httpClient = new HttpClient();
  //2、创建Uri对象
  var uri = new Uri.http('news-at.zhihu.com','/api/3/stories/latest');
  //3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //4、关闭请求，等待响应
  var response = await request.close();
  //5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}



/*
1、冲突解决
当引入两个库中有相同名称标识符的时候，如果是java通常我们通过写上完整的包名路径来指定使用的具体标识符，甚至不用import都可以，但是Dart里面是必须import的。当冲突的时候，可以使用as关键字来指定库的前缀。如下例子所示：

//    import 'package:lib1/lib1.dart';
//    import 'package:lib2/lib2.dart' as lib2;
//
//
//    Element element1 = new Element();           // Uses Element from lib1.
//    lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.

import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib;

void main(List<String> args) {
  Person p1=new Person('张三', 20);
  p1.printInfo();


  lib.Person p2=new lib.Person('李四', 20);
  p2.printInfo();
}

*/


/*
部分导入
  如果只需要导入库的一部分，有两种模式：

     模式一：只导入需要的部分，使用show关键字，如下例子所示：

      import 'package:lib1/lib1.dart' show foo;

     模式二：隐藏不需要的部分，使用hide关键字，如下例子所示：

      import 'package:lib2/lib2.dart' hide foo;

*/

/*
延迟加载

    也称为懒加载，可以在需要的时候再进行加载。
    懒加载的最大好处是可以减少APP的启动时间。

    懒加载使用deferred as关键字来指定，如下例子所示：

    import 'package:deferred/hello.dart' deferred as hello;

    当需要使用的时候，需要使用loadLibrary()方法来加载：

    greet() async {
      await hello.loadLibrary();
      hello.printGreeting();
    }


*/
