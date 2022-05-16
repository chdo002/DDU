import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../models/index.dart';

class QuestionPageVM extends ChangeNotifier {

  int nums = 2;
  
  late Question_feed questionData;

  Future<void> requestData(Hot_list_feed_item itemData) async {
    try {
      
      var dio = Dio(BaseOptions(baseUrl: "https://api.zhihu.com"));
      Response? res = await dio.get("/questions/${itemData.card_id.split('_').last}/feeds");
      questionData = Question_feed.fromJson(res.data);
      if (questionData.data.isEmpty) {
        nums = 2;
      } else {
        nums = 2 + questionData.data.length;
      }
    } catch (e) {
      Fluttertoast.showToast(msg:"错误$e.toString())");
    }
    notifyListeners();
  }
}
