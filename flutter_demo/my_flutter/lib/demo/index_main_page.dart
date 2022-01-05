import 'package:flutter/cupertino.dart';
import 'home_page.dart';

class IndexMainPage extends StatefulWidget {
  const IndexMainPage({Key? key}) : super(key: key);

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
    });
  }
}
