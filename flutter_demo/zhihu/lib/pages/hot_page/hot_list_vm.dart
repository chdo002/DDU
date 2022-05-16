import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../models/index.dart';


class HotListVM extends ChangeNotifier {

  late List<Hot_list_feed_item> itemData = [];

  Future<void> requestData() async {
    try {
      var dio = Dio(BaseOptions(baseUrl: "https://api.zhihu.com"));
      Response? res = await dio.get("/topstory/hot-list");
      var data = Hot_list.fromJson(res.data);
      itemData = data.data;
      if (itemData.isEmpty) {
        Fluttertoast.showToast(msg: "没有内容");
      } else {
        Fluttertoast.showToast(msg: "${itemData.length}条消息");
      }
    } catch (e) {
      Fluttertoast.showToast(msg:"错误$e.toString())");
    }
    notifyListeners();
  }
}
