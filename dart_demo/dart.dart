main() {
  somenFunc();
}

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

somenFunc() {
  MMM.funcc()
    ..nameF()
    ..ageF();
}
