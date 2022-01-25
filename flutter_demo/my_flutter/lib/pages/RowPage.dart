// ignore_for_file: file_names
import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: ColumnPage()));
  }
}

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 125,
        height: 200,
        color: Colors.yellow,
      ),
      const SubPage()
    ]);
  }
}

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

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
