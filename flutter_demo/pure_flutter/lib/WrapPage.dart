import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arr = [Text("data ")];
    for (var i = 0; i < 20; i++) {
      arr.add(Text("data${i} "));
    }
    return Wrap(spacing: 35, children: arr);
  }
}
