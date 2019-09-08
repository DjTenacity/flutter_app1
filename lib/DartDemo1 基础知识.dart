main() {
  print('你好dart');

//final 和 const修饰符

  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

// 字符串

  String str3 = '你好';
  var str4 = 'Dart';
  print(str3);
  print(str4);
  print("$str3 $str4");
  print(str3 + str4);
  print(str3 + " " + str4);

  //数值类型
  //1、int   必须是整型

  int a = 123;
  a = 45;
  print(a);

  //2、double  既可以是整型 也可是浮点型
  double b = 23.5;
  b = 24;
  print(b);

  //3、运算符
  // + - * / %
  var c = a + b;
  print(c);

//  布尔类型
  var a2 = 123;
  var b2 = '123';
  var b3 = 123;

  print(a2 == b2);
  print(b3 == a2);

// List（数组/集合）

  //1、第一种定义List的方式
  var l1 = ['aaa', 'bbbb', 'cccc'];
  print(l1);
  print(l1.length);
  print(l1[1]);

  //2、第二种定义List的方式
  var l2 = new List();

  l2.add('张三');
  l2.add('李四');
  l2.add('王五');

  print(l2);
  print(l2[2]);
  //3、定义List指定类型

  var l3 = new List<String>();
  l3.add('张三');

  //Maps（字典）
  //第一种定义 Maps的方式

  var person = {
    "name": "张三",
    "age": 20,
    "work": ["程序员", "送外卖"]
  };

  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);

  //第二种定义 Maps的方式

  var p = new Map();

  p["name"] = "李四";
  p["age"] = 22;
  p["work"] = ["程序员", "送外卖"];
  print(p);
  print(p["age"]);

/*
Dart判断数据类型

is 关键词来判断类型
*/

  // var str='1234';
  var str=123;

  if(str is String){
    print('是string类型');
  }else if(str is int){
    print('int');
  }else{
    print('其他类型');
  }


}

///这也是一个注释

//表示main方法没有返回值
void main2() {
  print('你好dart');

  /*
     ++  --   表示自增 自减 1

    在赋值运算里面 如果++ -- 写在前面 这时候先运算 再赋值，如果++ --写在后面 先赋值后运行运算

    var a=10;
    var b=a--;

    print(a);  //9
    print(b);  //10

  */

  // var a=10;
  // a++;   //a=a+1;

  // var a=10;
  // a--;    //a=a-1;


  // var a=10;
  // var b=a++;

  // print(a);  //11
  // print(b);  //10


  // var a=10;
  // var b=++a;

  // print(a);  //11
  // print(b);  //11




  // var a=10;
  // var b=--a;

  // print(a);  //9
  // print(b);  //9



  // var a=10;
  // var b=a--;

  // print(a);  //9
  // print(b);  //10


  var a=10;
  ++a;
  print(a);
}
