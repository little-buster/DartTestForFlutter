void main(List<String> args) {
  var myarray = ["猪八戒", "孙悟空", "沙师弟", "唐三藏", "白龙马"];
  // myarray.forEach((element) => print(element));
  // bool isOdd(int value) {
  //   return value % 2 == 0;
  // }

  // var a = isOdd(32);
  // var b = isOdd(11);
  // print(a);
  // print(b);
  // ((int n) {
  //   print("我是自动执行方法！");
  //   print(n);
  // })(22);
  //求5的阶乘

  int fn(int n) {
    if (n != 1) {
      return n * fn(n - 1);
    } else {
      return 1;
    }
  }

  var sum = fn(6);
  print(sum);
  //求1-100的和
  int fn2(int n) {
    if (n >= 1) {
      return n + fn2(n - 1);
    } else {
      return 0;
    }
  }

  var sum2 = fn2(100);
  print(sum2);

  fn3() {
    var a = 100;
    return () {
      a++;
      print(a);
    };
  }

  var b = fn3();
  fn3();
  fn3();
  b();
  b();
}
