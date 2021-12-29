import 'package:flutter/cupertino.dart';
import 'home_page.dart';

class IndexMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IndexPageState();
  }
}

class IndexPageState extends State<IndexMainPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(children: [
        Text("data"),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      width: constraints.maxWidth,
                      height: 1,
                      child: HSQ1ListView());
                }))
      ]);
    });
  }
}
