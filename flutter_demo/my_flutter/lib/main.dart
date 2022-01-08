import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'demo/index_main_page.dart';
import 'demo/list_item_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var channel = const MethodChannel("test_method");
  channel.setMethodCallHandler((call) async {
    print("new call ${call} ！！！！！！");
  });
  print("启动了2！！！！！");
  // if (window.physicalSize.isEmpty) {
  //   window.onMetricsChanged = () {
  //     if (!window.physicalSize.isEmpty) {
  //       window.onMetricsChanged = null;
  //       runApp(const MyApp());
  //     }
  //   };
  // } else {
  runApp(const MyApp());
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(actions: [
        BackButton(onPressed: () {
          Navigator.of(context).pop();
        })
      ]),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemBuilder: (c, index) {
                  return list[index];
                },
                itemExtent: 50,
                itemCount: list.length))
      ]),
    );
  }
}
