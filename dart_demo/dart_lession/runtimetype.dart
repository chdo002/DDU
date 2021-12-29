class MMM {
  static MMM _instance = MMM();
  static MMM funcc() {
    return _instance;
  }

  nameF() {
    print(123);
  }

  ageF() {
    print(12);
  }
}

class SubC extends MMM {}

main() {
  var a = MMM();
  var b = SubC();
  var arr = [a, b];
  for (var item in arr) {
    if (item.runtimeType == MMM) {
      print(item);
    } else {
      print("456");
    }
  }
}
