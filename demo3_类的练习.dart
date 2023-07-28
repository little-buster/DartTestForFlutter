import 'Animal.dart';

void main(List<String> args) {
  var lvbu = new Person("董卓", 33);
  lvbu.getInfo();
  var m_new = new Person.now("貂蝉", 14);
  print(m_new);
  m_new.getInfo();
  Animal cat = new Animal("狸花猫", 1, "渐变大理石");
  print(cat.toString());
  print(cat.getName());
  // cat.._name="s"
  //    .._age =5
  //    .._color = ""
  //    ..print()
  m_new
    ..name = "刘备"
    ..age = 88
    ..getInfo();

  Cube juxing = new Cube(5, 20);
  print(juxing.area);

  Square FANG = new Square(5, 5, "sex");
  print(FANG.area);
  print(FANG.sex);
}

//java中的类不需要有初值
class Person {
  late String name;
  int age;
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person(this.name, this.age);
  Person.now(this.name, this.age) {
    print("命名构造函数");
  }
  void getInfo() {
    print("${this.name}--------${this.age}");
  }
}

class Cube {
  double width;
  double height;
  Cube(this.width, this.height);
  get area {
    return this.width * this.height;
  }
}

class Square extends Cube {
  late String sex;
  Square(double width, double height, String sex) : super(width, height) {
    this.sex = sex;
  }
  @override
  // TODO: implement runtimeType
  Type get runtimeType => super.runtimeType;
  @override
  String toString() {
    // TO DO: implement toString
    return super.toString();
  }
}
