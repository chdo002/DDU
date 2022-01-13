import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/demo/state_page/state_page.dart';

import 'demo/index_page/index_main_page.dart';
import 'demo/list_page/list_item_page.dart';

void app_entry(Object arg) {
  if (kDebugMode) {
    print('这个意思？？$arg');
    runApp(const MyApp());
  }
}

void main(Object arg) {
  WidgetsFlutterBinding.ensureInitialized();
  var channel = const MethodChannel("test_method");
  channel.setMethodCallHandler((call) async {
    if (kDebugMode) {
      print("new call ${call} ！！！！！！");
    }
  });

  if (kDebugMode) {
    print("启动了2！！！！！$arg");
  }
  runApp(const MyApp());
}

Widget homePage() {
  return const MyHomePage(title: 'Flutter Demo Home Page');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (BuildContext ctx) {
        return homePage();
      },
      'main': (BuildContext ctx) {
        return const IndexMainPage();
      }
    };
    return CupertinoApp(
      // showPerformanceOverlay: true,
      routes: routes,
      title: 'Flutter Demo',
      initialRoute: null,
      theme: const CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
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
      buildItem('Provider demo', SatePageView()),
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
  }
}
