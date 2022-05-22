import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/index.dart';

class HotListItemVM extends ChangeNotifier {
  final Hot_list_feed_item itemData;
  bool showNewIcon;

  static Future<bool> isFeedRead(String id) async {
    final prefs = await SharedPreferences.getInstance();
    var res = await prefs.getBool('Feed_Read_Key_$id');
    return res ?? true;
  }

  clickItem() async {
    final prefs = await SharedPreferences.getInstance();
    
    prefs.setBool('Feed_Read_Key_${itemData.card_id}', false);
    showNewIcon = false;
    notifyListeners();
  }

  HotListItemVM(this.itemData, this.showNewIcon);
}

class HotListVM extends ChangeNotifier {
  late List<HotListItemVM> itemData = [];

  Future<void> requestData() async {
    try {
      var dio = Dio(BaseOptions(baseUrl: "https://api.zhihu.com"));
      Response? res = await dio.get("/topstory/hot-list");
      var data = Hot_list.fromJson(res.data);
      
      List<HotListItemVM> list = [];
      for (var item in data.data) {
        final isFeedRead = await HotListItemVM.isFeedRead(item.card_id);
        list.add(HotListItemVM(item, isFeedRead));
      }
      itemData = list;

      if (itemData.isEmpty) {
        Fluttertoast.showToast(msg: "没有内容");
      } else {
        // Fluttertoast.showToast(msg: "${itemData.length}条消息");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "错误$e.toString())");
    }
    notifyListeners();
  }
}
