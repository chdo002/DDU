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
              Text("精选推荐", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(width: 5),
              Text('店铺热门爆款',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey)),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('查看全部')]))
            ]),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, constrains) {
                      return Text("123");
                    }))
          ]));
    });
  }
}
