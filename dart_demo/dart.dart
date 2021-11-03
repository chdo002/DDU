import 'dart:async';

class Myclas {
  int a;
  Myclas(this.a);
  say() {
    print("hello $this");
  }

  @override
  String toString() {
    return super.toString();
  }
}

void main(List<String> args) {
  var o = new Myclas(1);
  // o.say();
  // Timer(const Duration(seconds: 1), () => print('timer'));

  var arr = const [1, 2, 3];
  // arr[2] = 8;
  var v = arr[2];
  print('end of main $v');
}
