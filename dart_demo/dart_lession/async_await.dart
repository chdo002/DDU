import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

log(String msg) => print('${DateTime.now()}: $msg');

void main(List<String> args) async {
  // asyncF2();
  // log('执行1');
  // await Future.delayed(Duration(seconds: 2));
  // sleep(Duration(seconds: 2));
  // log('执行2');
  // isolateTest();
  testOrderFunc();
}

testOrderFunc() {
  print("main start");

  Future(() => print("task1"));

  final future = Future(() => null);

  Future(() => print("task2"))
      .then((_) {
    print("task3");
    scheduleMicrotask(() => print('task4'));
  }).then((_) => print("task5"));

  future.then((_) => print("task6"));
  scheduleMicrotask(() => print('task7'));

  Future(() => print('task8')).then((_) => Future(() => print('task9'))).then((_) => print('task10'));

  print("main end");
}

String global = "原本值";

// https://www.jianshu.com/p/5ba4ffc1d4ac
isolateTest() async {
  // log("A");
  // testRequest().then((value) {
  //   log(value.statusCode);
  // });
  // log("B");
  // log('A');
  // asyncF1();
  global = '初始值';
  final action = (SendPort port) {
    log(global);
    global = "新值2";
    port.send(global);
  };
  ReceivePort port = ReceivePort();
  var iso = await Isolate.spawn(action, port.sendPort);
  port.listen((message) {
    log(message);
    port.close();
    iso.kill();
  });
  // log('B');
  // sleep(Duration(seconds: 2));
  // log('C');
  // asyncF2();
  // log('D');
}

Future<String> asyncF1() async {
  sleep(Duration(seconds: 1));
  global = '新值';
  log('global:$global  asyncF1,,??,${Isolate.current.debugName}');
  return global;
}

Future<void> asyncF2() async {
  // await Future.delayed(Duration(seconds: 1));
  // sleep(Duration(seconds: 1));
  log('global:$global  asyncF2,,??,${Isolate.current.debugName}');
}

Future<Response> testRequest() {
  final res = http.get(Uri.parse('http://www.baidu.com'));
  log(',,??,${Isolate.current.debugName}');
  return res;
}
