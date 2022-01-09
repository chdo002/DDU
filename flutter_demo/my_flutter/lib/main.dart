import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'demo/index_main_page.dart';
import 'demo/list_item_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var channel = const MethodChannel("test_method");
  channel.setMethodCallHandler((call) async {
    if (kDebugMode) {
      print("new call ${call} ！！！！！！");
    }
  });

  // if (window.physicalSize.isEmpty) {
  //   window.onMetricsChanged = () {
  //     if (!window.physicalSize.isEmpty) {
  //       window.onMetricsChanged = null;
  //       if (kDebugMode) {
  //         print("启动了1！！！！！size:${window.physicalSize}");
  //       }
  //       runApp(const MyApp());
  //     }
  //   };
  // } else {
  if (kDebugMode) {
    print("启动了2！！！！！");
  }
  runApp(const MyApp());
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      // showPerformanceOverlay: true,
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    Widget buildItem(String title, Widget page) {
      return ElevatedButton(
          child: Text(title),
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (c) {
              return page;
            }));
          });
    }

    final list = [
      buildItem('首页demo', const IndexMainPage()),
      buildItem('瀑布流demo', const ListItemView()),
    ];
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('标题'),
        ),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemBuilder: (c, index) {
                    return list[index];
                  },
                  itemExtent: 50,
                  itemCount: list.length))
        ]));
    // return Scaffold(
    //   appBar: AppBar(actions: [
    //     const Text('data'),
    //     CloseButton(onPressed: () {
    //       // Navigator.of(context).pop();
    //       var channel = const MethodChannel("test_method");
    //       channel.invokeMethod('pop').then((value) => {});
    //     })
    //   ]),
    //   body: Column(children: [
    //     Expanded(
    //         child: ListView.builder(
    //             itemBuilder: (c, index) {
    //               return list[index];
    //             },
    //             itemExtent: 50,
    //             itemCount: list.length))
    //   ]),
    // );
  }
}
