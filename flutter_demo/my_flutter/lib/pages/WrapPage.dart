// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arr = [const Text("data ")];
    for (var i = 0; i < 20; i++) {
      arr.add(Text("data$i "));
    }

    return Wrap(spacing: 35, children: arr);
  }
}
