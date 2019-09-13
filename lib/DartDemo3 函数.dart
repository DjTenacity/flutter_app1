List getList() {
  return ['111', '2222', '333'];
}
// 可以把方法当做参数传入函数
main() {
  /**
   * 内置方法/函数：

      print();

      自定义方法：
      自定义方法的基本格式：

      返回类型  方法名称（参数1，参数2,...）{
      方法体
      return 返回值;
      }
   * */

//演示方法的作用域
  void xxx() {
    aaa() {
      print(getList());
      print('aaa');
    }

    aaa();
  }

  // aaa();  错误写法

  xxx(); //调用方法

  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  String printUserInfo(String username, int age) {
    //行参
    return "姓名:$username---年龄:$age";
  }

  print(printUserInfo('张三', 21)); //实参

// 定义一个带可选参数的方法
  String printUserInfo2(String username, [int age]) {
    //行参

    if (age != null) {
      return "姓名:$username---年龄:$age";
    }
    return "姓名:$username---年龄保密";
  }

  print(printUserInfo2('张三', 21)); //实参
  print(printUserInfo2('张三'));

// 定义一个带默认参数的方法
  String printUserInfo3(String username, [String sex = '男', int age]) {
    //行参
    if (age != null) {
      return "姓名:$username---性别:$sex--年龄:$age";
    }
    return "姓名:$username---性别:$sex--年龄保密";
  }

  print(printUserInfo3('张三'));
  print(printUserInfo3('小李', '女'));
  print(printUserInfo3('小李', '女', 30));

// 定义一个命名参数的方法
  String printUserInfo4(String username, {int age, String sex = '男'}) {
    //行参

    if (age != null) {
      return "姓名:$username---性别:$sex--年龄:$age";
    }
    return "姓名:$username---性别:$sex--年龄保密";
  }

  print(printUserInfo4('张三', age: 20, sex: '未知'));
  print(printUserInfo4('张三'));

}
