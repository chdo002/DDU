import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var view = Container(width: double.infinity, color: CupertinoColors.systemTeal, child: ReviewTypeView());
    var listView = ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ReviewListItem();
        });
    var colum = Column(children: [view, Expanded(child: listView)]);
    return Scaffold(appBar: AppBar(title: Text('评论')), body: colum);
  }
}

class ReviewTypeView extends StatefulWidget {
  const ReviewTypeView({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ReviewTypeViewState();
}

class ReviewTypeViewState extends State<ReviewTypeView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> blocks = [];
    while (blocks.length < 8) {
      blocks.add(Container(width: 70, height: 40, color: Colors.cyan));
    }
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: blocks,
    );
  }
}

class ReviewListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user_info = Row(children: [
      SizedBox(
          width: 50,
          height: 50,
          child: Image(
              image: NetworkImage('https://tfs.alipayobjects'
                  '.com/images/partner/T1xwBxXedXXXXXXXXX'))),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [Text('12345678654'), Text('换成VIP')]),
        Row(children: [Text('换成⭐️')])
      ])
    ]);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      user_info,
      Text(
        '牛奶收到，包装很好',
        textAlign: TextAlign.left,
      ),
      Text('2001.1.1'),
      if (true)
        Row(children: [
          SizedBox(
            width: 120,
            height: 120,
            child: Image(image: NetworkImage('https://tfs.alipayobjects.com/images/partner/T1xwBxXedXXXXXXXXX')),
          )
        ])
    ]);
  }
}
