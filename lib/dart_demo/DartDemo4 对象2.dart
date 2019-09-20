// Dart中我们也可以在构造函数体运行之前初始化实例变量

class Rect{

  int height;
  int width;

  Rect():height=2,width=10{
    print("${this.height}----${this.width}");
  }

  getArea(){
    return this.height * this.width;
  }

  get area{
    return this.height*this.width;
  }
  set areaHeight(value){
    this.height=value;
  }
}

void main(){
  Rect rect=new Rect();
  print(rect.getArea());
  print("面积:${rect.area}");
}