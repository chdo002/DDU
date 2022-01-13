import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IndexMainPage extends StatelessWidget {
  const IndexMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(title: const Text('首页demo')),
    //     body:
    return CupertinoPageScaffold(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(children: [
        const Text("data"),
        Expanded(
            child: PageView(
                scrollDirection: Axis.horizontal,
                children: [1, 2, 3, 4]
                    .map((e) => SizedBox(
                        width: constraints.maxWidth,
                        height: 1,
                        child: const HSQ1ListView()))
                    .toList()))
      ]);
    }));
  }
}
