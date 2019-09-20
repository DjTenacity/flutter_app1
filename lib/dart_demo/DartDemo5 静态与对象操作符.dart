/*
Dart中的静态成员:

  1、使用static 关键字来实现类级别的变量和函数

  2、静态方法不能访问非静态成员，非静态方法可以访问静态成员

*/

import 'package:flutter_app/dart_demo/Animal.dart';

class Person{
  static String name="loverDJ";
  String nickName="DJ";
  int age=20;

//  Person(this.name,this.age);

  Person():nickName="woaini",age=25{
    print("我爱你");
  }

  static void show() {
    print(name);
  }
  void printInfo(){  /*非静态方法可以访问静态成员以及非静态成员*/

    // print(name);  //访问静态属性
    // print(this.age);  //访问非静态属性

    show();   //调用静态方法
  }

  static void printUserInfo(){//静态方法

    print(name);   //静态属性
    show();        //静态方法

    //print(this.age);     //静态方法没法访问非静态的属性

    // this.printInfo();   //静态方法没法访问非静态的方法
    // printInfo();

  }
  void printInfo2(){
    print("${nickName}====${age}");
}
}

/*
Dart中的对象操作符:

    ?     条件运算符 （了解）
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/

main(){
  // print(Person.name);
  // Person.show();

  // Person p=new Person();
  // p.printInfo();


  Person.printUserInfo();

  Person person=new Person();
  person?.printInfo();
  print(person is Animal);

  person..printInfo2()
  ..printInfo()
  ..age=27
  ..printInfo2();


   var p1;

   p1='';

   p1=new Person();
   p1.printInfo();
   (p1 as Person).printInfo2();

}