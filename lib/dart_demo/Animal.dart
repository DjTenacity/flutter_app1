class Animal {
  String _name; //私有属性
  int age;

  Animal(this._name, this.age);

  void getInfo() {
    print("${this._name}----${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run(); //类里面方法的相互调用
  }
}
