import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart';
import 'package:my_flutter/tool/request/request.dart';
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
  String contetn = '';
  _onRefresh() {
    if (kDebugMode) {
      print('on refresh');
    }
    final req = Request(sec: 4, cancelToken: CancelToken());

    setState(() {
      contetn = "开始请求";
    });
    try {
      req.request().then((value) {
        _refreshControl.refreshToIdle();
        setState(() {
          if (value != null) {
            contetn = value;
          } else {
            contetn = "下拉请求取消";
          }
        });
        if (kDebugMode) {
          print('on refresh end');
        }
      });
    } catch (e) {
      setState(() {
        contetn = e.toString();
      });
    }
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        contetn = '请求取消';
      });
      req.dataSub?.cancel();
      _refreshControl.refreshToIdle();
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
      header: const ClassicHeader(),
      footer: const ClassicFooter(),
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
          itemCount: items.length,
          itemExtent: 100,
          itemBuilder: (c, index) => Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(children: [
                Container(
                    width: 200, height: 180, color: Colors.amber, child: Center(child: Text("请求：$contetn $index"))),
                const CupertinoActivityIndicator(
                  radius: 20,
                )
              ]))),
    );
    return CommonPage('刷新', body);
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CommonPage(
        'loading',
        Center(
          child: CupertinoActivityIndicator(),
        ));
  }
}
