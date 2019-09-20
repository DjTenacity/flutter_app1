/*
面向对象的三大特性：封装 、继承、多态

Dart中的类的继承：
1、子类使用extends关键词来继承父类
2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
3、子类能复写父类的方法 getter和setter
*/


class Person{
  String name;
  num age;

  Person(this.name,this.age);
  Person.xxx(this.name);

  void info(){
    print("${this.name}------${age}");
  }
  void info2(){
    print("${this.name}--22222----${age}");
  }
}
class Web extends Person{
  String sex;
  //实例化 给命名构造函数传参
  Web.xxx(String name) : super.xxx(name );
  Web(String name, num age,String sex) : super(name, age);

  //覆写父类的方法
  @override       //可以写也可以不写  建议在覆写父类方法的时候加上 @override
  void info(){
    //自类调用父类的方法
    info2();
    super.info2();
  }

}