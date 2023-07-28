abstract class Person {
  say();
}

class Student implements Person {
  @override
  say() {
    // TODO: implement say
    print("老师好！");
  }
}

class Teacher implements Person {
  @override
  say() {
    // TODO: implement say
    print("同学们好！");
  }
}

void main(List<String> args) {
  Student student = new Student();
  student.say();
  Teacher teacher = new Teacher();
  teacher.say();
}
