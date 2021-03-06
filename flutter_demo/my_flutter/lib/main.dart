import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/demo/Sliver/SliverPage.dart';
import 'package:my_flutter/demo/animation/animate.dart';
import 'package:my_flutter/demo/getx_page/getx_page.dart';
import 'package:my_flutter/demo/listPage.dart';
import 'package:my_flutter/demo/plug_page/plug_page.dart';
import 'package:my_flutter/demo/refresh_page/refresh_page.dart';
import 'package:my_flutter/demo/standard_page/standard_page.dart';
import 'package:my_flutter/demo/state_page/state_page.dart';
import 'package:my_flutter/pages/animateListPage.dart';
import 'package:provider/provider.dart';

import 'demo/SlideItemPage/SlidePage.dart';
import 'demo/index_page/index_main_page.dart';
import 'demo/list_page/list_item_page.dart';

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
      return SizedBox(
          height: 55,
          child: ElevatedButton(
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
              }));
    }

    final list = [
      buildItem('首页demo', const IndexMainPage()),
      buildItem('瀑布流demo', const ListItemView()),
      buildItem('State demo', const SatePageView()),
      buildItem('GetX demo', const GetXPage(), material: true),
      buildItem('插件', const PlugPage()),
      buildItem('标准化？', const StandardPage(), material: true),
      buildItem('刷新', const RefreshPage(), material: true),
      buildItem('动画列表', const AniListPage(), material: true),

      // buildItem('刷新2', const LoadingPage(), material: true),
      buildItem('动画', const AnimationPage(), material: true),
      buildItem('复用列表Sliver', const SliverPage(), material: true),
      buildItem('侧滑', const SliderPage(), material: true),
      buildItem('demo', const ListPage(), material: true),
    ];

    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                SystemNavigator.pop(animated: true);
                // MethodChannel('test_method').invokeMethod('pop');
              },
              child: const Icon(Icons.close_sharp)),
          title: const Text('标题'),
        ),
        body: ColoredBox(
          color: Colors.amber.shade800,
          child: ChangeNotifierProvider(
              create: (c) => _VM()..startLoading(),
              builder: (c, w) {
                return Column(children: [
                  if (c.watch<_VM>().show)
                    CircularProgressIndicator(
                      backgroundColor: Colors.grey[200],
                      valueColor: const AlwaysStoppedAnimation(Colors.blue),
                    ),
                  Text(c.watch<_VM>().title),
                  Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) => const Divider(height: 1),
                          itemBuilder: (c, index) {
                            return list[index];
                          },
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

    Future.delayed(const Duration(seconds: 1)).then((value) {
      show = false;
      title = '加载完成';
      notifyListeners();
    });
  }
}

class CommonPage extends StatelessWidget {
  final String title;
  final Widget body;

  const CommonPage(this.title, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: body);
  }
}
