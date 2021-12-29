class Animal {
  String name;
  Animal(this.name);
  // 父类定义eat() 方法 但是不去实现他 让子类实现 子类调用会有不同的效果
  eat() {
    print('animal eat');
  } //抽象方法
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  eat() {
    print('小狗在吃骨头');
  }

  run() {
    print('run');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  eat() {
    print('小猫在吃老鼠');
  }

  run() {
    print('run');
  }
}

main() {
  // var d = Dog("Dog");
  // d.eat(); //小狗在吃骨头

  // var c = Cat("2");
  // c.eat(); //  小猫在吃老鼠
  // var list = [d, c];

  // list.add(Cat('3'));
  // list.add(Dog('4'));

  // for (var item in list) {
  //   print(item is Dog);
  // }

  var list2 = ['1', '2', '3', '4'].map((e) => Dog(e)).toList().cast<Animal>();
  list2 += ['3'].map((e) => Animal(e)).toList();
  for (var item in list2) {
    print(item is Dog);
  }
}
