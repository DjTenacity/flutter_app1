/*

面向对象编程(OOP)的三个基本特征是：封装、继承、多态

      封装：封装是对象和类概念的主要特性。封装，把客观事物封装成抽象的类，并且把自己的部分属性和方法提供给其他对象调用, 而一部分属性和方法则隐藏。

      继承：面向对象编程 (OOP) 语言的一个主要功能就是“继承”。继承是指这样一种能力：它可以使用现有类的功能，并在无需重新编写原来的类的情况下对这些功能进行扩展。

      多态：允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。


Dart所有的东西都是对象，所有的对象都继承自Object类。

Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类

一个类通常由属性和方法组成。

*/
import 'Animal.dart';

class Person {
  String name = "张三";
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  Person.now() {
    print('我是命名构造函数');
  }

  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void getInfo() {
    // print("$name----$age");
    print("${this.name}----${this.age}");
  }

  void setInfo(int age) {
    this.age = age;
  }
}

void main() {
  easy();

  //实例化

  // var p1=new Person();
  // print(p1.name);
  // p1.getInfo();
  Person p1 = new Person("wwww", 20);
  // print(p1.name);

  p1.setInfo(28);
  p1.getInfo();

  Person p2 = new Person.setInfo('李四', 30);
  p2.getInfo();



  Animal a=new Animal('小狗', 3);

  print(a.getName());

  a.execRun();   //间接的调用私有方法
}

void easy() {
  List list = new List();
  list.isEmpty;
  list.add('香蕉');

  Map m = new Map();
  m["username"] = "张三";
  m.addAll({"age": 20});
  m.isEmpty;

  Object a = 123;
  Object v = true;
  print(a);
  print(v);
}
