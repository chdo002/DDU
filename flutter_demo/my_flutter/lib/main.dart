import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/demo/getx_page/getx_page.dart';
import 'package:my_flutter/demo/plug_page/plug_page.dart';
import 'package:my_flutter/demo/state_page/state_page.dart';
import 'package:provider/provider.dart';
import 'package:random_color/random_color.dart';

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
  // var channel = const MethodChannel("test_method");
  // channel.setMethodCallHandler((call) async {
  //   if (kDebugMode) {
  //     print("new call ${call} ！！！！！！");
  //   }
  // });

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

    return MaterialApp(
      // showPerformanceOverlay: true,
      routes: routes,
      title: 'Flutter Demo',
      initialRoute: null,
      theme: ThemeData(
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
    Widget buildItem(String title, Widget page, {bool material = false}) {
      return ElevatedButton(
          child: Text(title),
          onPressed: () {
            if (material) {
              Navigator.push(context, MaterialPageRoute(builder: (c) {
                return page;
              }));
            } else {
              Navigator.push(context, CupertinoPageRoute(builder: (c) {
                return page;
              }));
            }
          });
    }

    final list = [
      buildItem('首页demo', const IndexMainPage()),
      buildItem('瀑布流demo', const ListItemView()),
      buildItem('State demo', const SatePageView()),
      buildItem('GetX demo', GetXPage(), material: true),
      buildItem('插件', PlugPage())
    ];

    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                SystemNavigator.pop(animated: true);
                // MethodChannel('test_method').invokeMethod('pop');
              },
              child: Icon(Icons.close_sharp)),
          title: Text('标题'),
        ),
        body: ColoredBox(
          color: Colors.amber.shade800,
          child: ChangeNotifierProvider(
              create: (c) => _VM()..startLoading(),
              builder: (c, w) {
                return Column(children: [
                  if (c.watch<_VM>().show) CupertinoActivityIndicator(),
                  Text(c.watch<_VM>().title),
                  Expanded(
                      child: ListView.builder(
                          itemBuilder: (c, index) {
                            return list[index];
                          },
                          itemExtent: 50,
                          itemCount: list.length))
                ]);
              }),
        ));
  }
}

class _VM extends ChangeNotifier {
  var show = false;
  var title = '111';
  startLoading() {
    show = true;
    title = '开始加载';
    notifyListeners();

    Future.delayed(Duration(seconds: 5)).then((value) {
      show = false;
      title = '加载完成';
      notifyListeners();
    });
  }
}
