import 'dart:io';

import 'package:http/http.dart' as http;

main() {
  _startMethod();
}

_startMethod() async {
  print("A开始执行这个方法~");
  print(await getHttp());
  print("A执行结束");
}

getHttp() async {
  var rul = Uri(scheme: "http", host: "127.0.0.1", port: 8888);
  final result = await http.get(rul);
  return "请求到的数据：" + result.body.toString();
}
