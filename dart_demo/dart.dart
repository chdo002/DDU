import 'dart:async';
import 'package:http/http.dart';

void main(List<String> args) {
  timer();
  print("object");
}

timer() async {
  var result = await get(Uri(scheme: "http", host: "www.baidu.com"));
  print(result);
}
