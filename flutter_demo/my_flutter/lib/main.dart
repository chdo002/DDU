import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:my_flutter/pages/animateListPage.dart';
import 'package:my_flutter/pages/page_trans_animation/trans_page.dart';

import 'demo/SlideItemPage/SlidePage.dart';
import 'demo/Sliver/SliverPage.dart';
import 'demo/animation/animate.dart';
import 'demo/getx_page/getx_page.dart';
import 'demo/index_page/index_main_page.dart';
import 'demo/listPage.dart';
import 'demo/list_page/list_item_page.dart';
import 'demo/plug_page/plug_page.dart';
import 'demo/refresh_page/refresh_page.dart';
import 'demo/standard_page/standard_page.dart';
import 'demo/state_page/state_page.dart';

void main() {
  ///这里的CustomFlutterBinding调用务必不可缺少，用于控制Boost状态的resume和pause
  CustomFlutterBinding();
  runApp(MyApp());
}

///创建一个自定义的Binding，继承和with的关系如下，里面什么都不用写
class CustomFlutterBinding extends WidgetsFlutterBinding with BoostFlutterBinding {}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// 由于很多同学说没有跳转动画，这里是因为之前exmaple里面用的是 [PageRouteBuilder]，
  /// 其实这里是可以自定义的，和Boost没太多关系，比如我想用类似iOS平台的动画，
  /// 那么只需要像下面这样写成 [CupertinoPageRoute] 即可
  /// (这里全写成[MaterialPageRoute]也行，这里只不过用[CupertinoPageRoute]举例子)
  ///
  /// 注意，如果需要push的时候，两个页面都需要动的话，
  /// （就是像iOS native那样，在push的时候，前面一个页面也会向左推一段距离）
  /// 那么前后两个页面都必须是遵循CupertinoRouteTransitionMixin的路由
  /// 简单来说，就两个页面都是CupertinoPageRoute就好
  /// 如果用MaterialPageRoute的话同理

  Map<String, FlutterBoostRouteFactory> routerMap = {
    'mainPage': (RouteSettings settings, String? uniqueId) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (_) {
            return MainPage(
              data: settings.arguments.toString(),
            );
          });
    },
    'simplePage': (settings, uniqueId) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (_) {
            Map<String, Object> map = settings.arguments as Map<String, Object>;
            String data = map['data'] as String;
            return SimplePage(
              data: data,
            );
          });
    },
  };

  Route<dynamic>? routeFactory(RouteSettings settings, String? uniqueId) {
    FlutterBoostRouteFactory? func = routerMap[settings.name];
    if (func == null) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (_) {
            // Map<String, Object>? map = settings.arguments as Map<String, Object>?;
            // String data = map != null ? map['data'] as String : "123??";
            return MainPage(
              data: settings.arguments.toString(),
            );
          });
    }
    return func(settings, uniqueId);
  }

  Widget appBuilder(Widget home) {
    return CupertinoApp(
      home: home,
      debugShowCheckedModeBanner: true,

      ///必须加上builder参数，否则showDialog等会出问题
      builder: (_, __) {
        return home;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterBoostApp(
      routeFactory,
      appBuilder: appBuilder,
    );
  }
}

class MainPage extends StatelessWidget {
  final String data;

  const MainPage({required this.data});

  Widget buildItem(String title, Widget page, BuildContext context, {bool material = false}) {
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

  @override
  Widget build(BuildContext context) {
    final list = [
      buildItem('过场动画', const TransPageA(), context, material: false),
      buildItem('首页demo', const IndexMainPage(), context),
      buildItem('瀑布流demo', const ListItemView(), context),
      buildItem('State demo', const SatePageView(), context),
      buildItem('GetX demo', const GetXPage(), context, material: true),
      buildItem('插件', const PlugPage(), context),
      buildItem('标准化？', const StandardPage(), context, material: true),
      buildItem('刷新', const RefreshPage(), context, material: true),
      buildItem('动画列表', const AniListPage(), context, material: true),

      // buildItem('刷新2', const LoadingPage(), material: true,context),
      buildItem('动画', const AnimationPage(), context, material: true),
      buildItem('复用列表Sliver', const SliverPage(), context, material: true),
      buildItem('侧滑', SliderPage(), context, material: true),
      buildItem('demo', const ListPage(), context, material: true),
    ];

    return Scaffold(
      appBar: const CupertinoNavigationBar(middle: Text('首页')),
      body: ListView(children: list),
    );
  }
}

class SimplePage extends StatelessWidget {
  const SimplePage({required Object data});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SimplePage')),
    );
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
