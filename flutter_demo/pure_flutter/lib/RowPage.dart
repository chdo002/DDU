import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: ColumnPage()));
  }
}

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 125,
        height: 200,
        color: Colors.yellow,
      ),
      SubPage()
    ]);
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 100, height: 100, color: Colors.lightBlue),
        const Text("data1"),
        Container(width: 22, height: 100, color: Colors.lightBlue)
      ],
    );
  }
}
