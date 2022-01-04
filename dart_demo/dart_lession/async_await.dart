import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main(List<String> args) async {
  print("A");
  testRequest().then((value) {
    print(value.statusCode);
  });
  print("B");
}

Future<Response> testRequest() {
  final res = http.get(Uri.parse('http://www.baidu.com'));
  return res;
}
