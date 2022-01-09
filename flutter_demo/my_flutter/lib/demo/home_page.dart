import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_flutter/demo/subview/recommen_view.dart';

import '../models/item.dart';
import 'subview/itemView1.dart';

class HSQ1ListView extends StatefulWidget {
  const HSQ1ListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HSQ1ListState();
  }
}

class HSQ1ListState extends State<HSQ1ListView> {
  var models = <dynamic>[];

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('test/datas/item_list.json').then((value) {
      Map<String, dynamic> jsonDic = json.decode(value);
      List<Map<String, dynamic>> recJsonList =
          jsonDic["recommend"].cast<Map<String, dynamic>>();
      var selectModel = HSQSelectRModel(
          recJsonList.map((e) => RecommendItem.fromJson(e)).toList());
      var models = [selectModel].cast<dynamic>();
      List<Map<String, dynamic>> jsonList =
          jsonDic["list"].cast<Map<String, dynamic>>();
      models += jsonList.map((e) => Item.fromJson(e)).toList();
      if (mounted) {
        setState(() {
          this.models = models;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: models.length,
        itemBuilder: (BuildContext context, int index) {
          var model = models[index];
          if (model.runtimeType == Item) {
            return HSQCOl1ItemView(item: model);
          } else {
            return HSQSelectRecommendView(model);
          }
        });
  }
}
