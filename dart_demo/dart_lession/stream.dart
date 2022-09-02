main() {
  var stream = Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(Duration(seconds: 3), () {
      return "hello 3";
    })
  ]);
  stream.listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {
    print('done');
  });
}
