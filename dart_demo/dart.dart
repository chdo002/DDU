import 'package:http/http.dart';

void main(List<String> args) {
  timer();
  print("object");
}

timer() async {
  var result = await get(Uri(scheme: "http", host: "127.0.0.1", port: 8888));
  print(result);
}
