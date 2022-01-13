import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueListDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ValueListDemoState();
  }
}

class ValueListDemoState extends State<ValueListDemoPage> {
  ValueNotifier<int> _count = ValueNotifier<int>(0);
  static const double textScaleFactor = 1.5;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: _count,
        builder: (BuildContext context, int value, Widget? child) {
          return Row(mainAxisAlignment: MainAxisAlignment.center, children: [child!, Text("data")]);
        },
        child: const Text('点击了', textScaleFactor: textScaleFactor));
  }
}
