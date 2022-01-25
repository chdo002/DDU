import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/demo/state_page/sub_page/provider_demo.dart';
import 'package:my_flutter/demo/state_page/sub_page/somple_provider_page.dart';

class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final int data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    // return context
    //     .getElementForInheritedWidgetOfExactType<ShareDataWidget>()
    //     ?.widget as ShareDataWidget; // 区别是didChangeDependencies 是否会回调
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}

class SatePageView extends StatefulWidget {
  const SatePageView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SatePageViewSate();
  }
}

class SatePageViewSate extends State<SatePageView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('InheritedWidget Demo'),
        ),
        child: Center(
          child: ShareDataWidget(
            data: count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: _TestWidget(), //子widget中依赖ShareDataWidget
                ),
                ElevatedButton(
                  child: const Text("Increment"),
                  //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                  onPressed: () => setState(() => ++count),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ProviderPage
                    Navigator.push(context, CupertinoPageRoute(builder: (c) {
                      return const ProviderPage();
                    }));
                  },
                  child: const Text("Simple Provider demo"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ProviderPage
                    Navigator.push(context, CupertinoPageRoute(builder: (c) {
                      return const ProviderDemo();
                    }));
                  },
                  child: const Text("The Provider demo"),
                )
              ],
            ),
          ),
        ));
  }
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text(ShareDataWidget.of(context)!.data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    /*
    一般来说，子 widget 很少会重写此方法，因为在依赖改变后 Flutter 框架也都会调用build()方法重新构建组件树。
    但是，如果你需要在依赖改变后执行一些昂贵的操作，比如网络请求，这时最好的方式就是在此方法中执行，这样可以避免每次build()都执行这些昂贵操作。
    */
    if (kDebugMode) {
      print("Dependencies change");
    }
  }
}
