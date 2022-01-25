import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshPage extends StatefulWidget {
  const RefreshPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RefreshPageState();
  }
}

class RefreshPageState extends State<RefreshPage> {
  final _refreshControl = RefreshController();
  List<String> items = ["1"];

  _onRefresh() {
    if (kDebugMode) {
      print('on refresh');
    }
    Future.delayed(const Duration(seconds: 1)).then((value) {
      _refreshControl.refreshCompleted();
      if (kDebugMode) {
        print('on refresh end');
      }
    });
  }

  _onLoading() {
    if (kDebugMode) {
      print('on loading');
    }
    Future.delayed(const Duration(seconds: 1)).then((value) {
      _refreshControl.loadComplete();
      if (kDebugMode) {
        print('on loading end');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var body = SmartRefresher(
      controller: _refreshControl,
      enablePullUp: true,
      header: const WaterDropHeader(),
      footer: const ClassicFooter(),
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
          itemCount: items.length,
          itemExtent: 100,
          itemBuilder: (c, index) => Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(children: [
                Container(width: 100, height: 80, color: Colors.amber, child: Center(child: Text("data$index"))),
                const CupertinoActivityIndicator()
              ]))),
    );
    return CommonPage('刷新', body);
  }
}
