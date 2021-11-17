import 'package:flutter/material.dart';

// void main(List<String> args) {
//   // runApp(const APPP());
//   runApp(const Center(
//     child: Text(
//       "data",
//       textDirection: TextDirection.ltr,
//     ),
//   ));
// }
Widget asdfasdf() {
  return const Center(
    child: Text(
      "data",
      style: TextStyle(color: Colors.red),
      textDirection: TextDirection.ltr,
    ),
  );
}

class APPP extends StatelessWidget {
  const APPP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("123"),
    );
  }
}
