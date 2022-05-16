import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../models/index.dart';

class QuestionWebPage extends StatelessWidget {
  final Hot_list_feed_item itemData;

  const QuestionWebPage({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(title: Text(itemData.target.title)),
        body: WebView(
          initialUrl: 'https://www.zhihu.com/question/${itemData.card_id.split("_").last}',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
