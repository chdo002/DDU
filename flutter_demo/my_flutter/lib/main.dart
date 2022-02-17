import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:my_flutter/demo/getx_page/getx_page.dart';
import 'package:my_flutter/demo/plug_page/plug_page.dart';
import 'package:my_flutter/demo/refresh_page/refresh_page.dart';
import 'package:my_flutter/demo/standard_page/standard_page.dart';
import 'package:my_flutter/demo/state_page/state_page.dart';
import 'package:provider/provider.dart';

import 'demo/index_page/index_main_page.dart';
import 'demo/list_page/list_item_page.dart';

class CustomeBinding extends WidgetsFlutterBinding with BoostFlutterBinding {}

void main(Object arg) {
  CustomeBinding();
  runApp(const MyApp());
}

// buildItem('首页demo', const IndexMainPage()),
// buildItem('瀑布流demo', const ListItemView()),
// buildItem('State demo', const SatePageView()),
// buildItem('GetX demo', const GetXPage(), material: true),
// buildItem('插件', const PlugPage()),
// buildItem('标准化？', const StandardPage(), material: true),
// buildItem('刷新', const RefreshPage(), material: true),

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, FlutterBoostRouteFactory> routerMap = {
    'mainPage': (settings, _) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (_) {
            // Map<String, Object> map = settings.arguments as Map<String, Object>;
            // String data = map['data'] as String;
            return const MainPage();
          });
    },
    'simplePage': (settings, _) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (_) {
            // Map<String, Object> map = settings.arguments as Map<String, Object>;
            // String data = map['data'] as String;
            return const SimplePage();
          });
    },
  };

  Route<dynamic>? routeFactory(RouteSettings settings, String? uniqueId) {
    FlutterBoostRouteFactory? func = routerMap[settings.name];
    return func != null ? func(settings, uniqueId) : null;
  }

  Widget appBuilder(Widget home) {
    return MaterialApp(
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
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
              color: Colors.brown.shade300,
              width: 50,
              height: 50,
              child: TextButton(
                  child: Text('data'),
                  onPressed: () {
                    BoostNavigator.instance.pop();
                  }))),
      body: Center(child: Text('Main Page')),
    );
  }
}

class SimplePage extends StatelessWidget {
  const SimplePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SimplePage')),
    );
  }
}
