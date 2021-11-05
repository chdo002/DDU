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

void myFunc([String name = "123"]) {
  print(name);
}

void main(List<String> args) {
  myFunc();
}
