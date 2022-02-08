// import 'dart_lession/runtimetype.dart';
// import 'dart_lession/polymorphism.dart';

main() {
  final ll = Uri.parse('aaaa?aa=123&bb=haha');
  Map<String, dynamic> mm = ll.queryParameters;
  final va = mm['bb'];
  if (va.runtimeType == String) {
    final ss = va;
    print(ss);
  }
  final vaa = mm['aa'];
  if (vaa != null) {
    num a = num.parse(vaa);
    print(a);
  }

  // num b = mm['bb'];
}
