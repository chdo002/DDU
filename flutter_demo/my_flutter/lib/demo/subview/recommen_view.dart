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
      return Container(
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
                    itemCount: model.items.length,
                    itemBuilder: (context, index) {
                      return HSQRecommendItemView(model.items[index]);
                    }))
          ]));
    });
  }
}

class HSQRecommendItemView extends StatelessWidget {
  const HSQRecommendItemView(this.item, {Key? key}) : super(key: key);
  final RecommendItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: Column(children: [
          AspectRatio(aspectRatio: 1, child: Image(image: NetworkImage(item.thumbnail ?? ''))),
          Expanded(child: Column(children: [Text(item.name ?? '')]))
        ]));
  }
}
