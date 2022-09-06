import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EmbedWebPage extends StatelessWidget {
  EmbedWebPage({Key? key}) : super(key: key);

  Future<String> getHttp() async {
    try {
      var response = await Dio().get(
          'https://m.betaapi.haoshiqi.net/product/productdetail?channel=App_Store&cityId=857&device=Simulator&location=0.000000%2C0.000000&net=WIFI&osVersion=15.5&page=HSQGoodsDetailVC&pre_spm=hsq_app_ios.special-zone&productId=109286&sheight=844&spm=hsq_app_ios.index-id_64.c-product-col1_69&statId=00000000-0000-0000-0000-000000000000&swidth=390&terminal=ios&timestamp=1662081992.052046&token=6e5348c05817f6b8e9da803a2b886084&udid=a29b26fcb7641c1582e17d7bc03386fa4cbaa2ef&user_flow=&uuid=227092578&v=4.9.7&zoneId=857');
      var data = response.data;
      var data2 = data['data'];
      var data3 = data2['graphicDetail'];
      return data3;
    } catch (e) {}
    return '';
  }

  late WebViewController _controller;
  ValueNotifier<double> scrollHeight = ValueNotifier<double>(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<double>(
            valueListenable: scrollHeight,
            builder: (BuildContext ctx, double scrollHeight, Widget? child) {
              return SizedBox(height: scrollHeight, child: child);
            },
            child: WebView(
                javascriptChannels: {scrollHeightNotifierJavascriptChannel},
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (controller) async {
                  _controller = controller;
                  // controller.loadUrl('https://www.baidu.com');
                  // controller.loadUrl('https://www.zhihu.com/hot?utm_id=0');
                  var http = await getHttp();
                  controller.loadHtmlString(http);
                },
                onPageFinished: (url) {
                  _controller.runJavascript(scrollHeightJs);
                })));
  }

  JavascriptChannel get scrollHeightNotifierJavascriptChannel => JavascriptChannel(
      name: 'ScrollHeightNotifier',
      onMessageReceived: (JavascriptMessage message) {
        final String msg = message.message;
        final double? height = double.tryParse(msg);
        if (height != null) {
          print('---> $height');
          scrollHeight.value = height;
        }
      });

  String scrollHeightJs = '''(function() {
  var height = 0;
  var notifier = window.ScrollHeightNotifier || window.webkit.messageHandlers.ScrollHeightNotifier;
  if (!notifier) return;

  function checkAndNotify() {
    var curr = document.body.scrollHeight;
    if (curr !== height) {
      height = curr;
      notifier.postMessage(height.toString());
    }
  }

  var timer;
  var ob;
  if (window.ResizeObserver) {
    ob = new ResizeObserver(checkAndNotify);
    ob.observe(document.body);
  } else {
    timer = setTimeout(checkAndNotify, 200);
  }
  window.onbeforeunload = function() {
    ob && ob.disconnect();
    timer && clearTimeout(timer);
  };
})();''';
}
