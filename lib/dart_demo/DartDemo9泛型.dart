/*

通俗理解：泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)

*/


 int getData0(int value){
     return value;
 }

//同时返回 string类型 和number类型       不指定类型
 getData1(value){
     return value;
 }
//不指定类型放弃了类型检查。我们现在想实现的是传入什么 返回什么。
// 比如:传入number 类型必须返回number类型  传入 string类型必须返回string类型

 T getData2<T>(T value){
     return value;
 }

 //只对传入参数效验 ,返回值没有效验
getData3<T>(T value){
  return value;
}

class PrintClass<T>{
  List list=new List<T>();
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for(var i=0;i<this.list.length;i++){
      print(this.list[i]);
    }
  }
}


// 泛型接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}

class FlieCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}


void main(){
  PrintClass printClass=new PrintClass();

   printClass.add(1111);
   printClass.add("ssss");

  printClass. printInfo();
}