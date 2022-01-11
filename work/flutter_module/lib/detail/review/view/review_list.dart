import 'package:flutter/cupertino.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const text = Text("Second -> Page",
        style: TextStyle(
            color: CupertinoColors.systemBlue,
            backgroundColor: CupertinoColors.destructiveRed));
    const label = SizedBox(width: 400, height: 100, child: text);
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('评论')),
        // child: Center(child: Text('12312331')));
        child: Column(children: const [label]));
  }
}
