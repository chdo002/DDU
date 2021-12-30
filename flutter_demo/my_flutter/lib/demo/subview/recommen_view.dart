import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/models/index.dart';

class HSQSelectRModel {
  List<RecommendItem> items;

  HSQSelectRModel(this.items);
}

class HSQSelectRecommendView extends StatelessWidget {
  final HSQSelectRModel model;

  const HSQSelectRecommendView(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return SizedBox(
          width: constrains.maxWidth,
          height: 200,
          child: Column(children: [
            Row(children: [
              const Text("精选推荐", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(width: 5),
              const Text('店铺热门爆款',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey)),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Text('查看全部')]))
            ]),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    itemCount: model.items.length,
                    itemBuilder: (context, index) {
                      return HSQRecommendItemView(model.items[index]);
                    }))
          ]));
    });
  }
}

class HSQRecommendItemView extends StatefulWidget {
  const HSQRecommendItemView(this.item, {Key? key}) : super(key: key);
  final RecommendItem item;

  @override
  State<StatefulWidget> createState() {
    return HSQRecommendItemState();
  }
}

class HSQRecommendItemState extends State<HSQRecommendItemView> {
  RecommendItem get item => widget.item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            item.expand = !item.expand;
          });
        },
        child: Container(
            color: Colors.deepOrange,
            width: 100,
            child: Column(children: [
              AspectRatio(
                  aspectRatio: 1,
                  child: Image(image: NetworkImage(item.thumbnail ?? ''))),
              SizedBox(width: 50, height: item.expand ? 2 : 5),
              Expanded(
                  child: Column(children: [
                Text(item.name ?? '',
                    maxLines: 3,
                    style: const TextStyle(overflow: TextOverflow.ellipsis))
              ]))
            ])));
  }
}
