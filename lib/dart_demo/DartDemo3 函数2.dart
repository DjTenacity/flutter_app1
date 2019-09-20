void main() {
//  实现一个 把方法当做参数的方法
  var fn = () {
    print('我是一个匿名方法');
  };

  fn();

  //方法
  fn1() {
    print('fn1');
  }

  //方法
  fn2(fn) {
    fn();
  }

  //调用fn2这个方法 把fn1这个方法当做参数传入
  fn2(fn1);

  /*需求：使用forEach打印下面List里面的数据*/

  List list = ['苹果', '香蕉', '西瓜'];

  list.forEach((value) {
    print(value);
  });

  list.forEach((value) => print(value));

  list.forEach((value) => {print(value)});

/*需求：修改下面List里面的数据，让数组中大于2的值乘以2*/

  list = [4, 1, 2, 3, 4];

  var newList = list.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());

  newList = list.map((value) => value > 2 ? value * 2 : value);

  print(newList.toList());

/*
需求：    1、定义一个方法isEvenNumber来判断一个数是否是偶数
         2、定义一个方法打印1-n以内的所有偶数
*/

//定义一个方法isEvenNumber来判断一个数是否是偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);

  //匿名方法

  var printNum2 = () {
    print("wewewr");
  };
  printNum2();
  var printNum3 = (int n) {
    print("wewewr" + n.toString());
  };
  printNum3(222);

  //自执行方法
  ((int n) {
    print(n);
    print("自执行方法");
  })(5555);


  //通过方法的递归 求1-100的和
  var sum=0;
  fn3(int n){
    sum+=n;
    if(n==0){
      return;
    }
    n--;
  }
  fn3(100);
  printNum3(sum);
}
