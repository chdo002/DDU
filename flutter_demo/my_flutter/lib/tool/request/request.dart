import 'dart:async';

import 'package:async/async.dart';
import 'package:dio/dio.dart';

class Request {
  Request({
    int sec = 1,
    CancelToken? cancelToken,
  }) {
    // ignore: prefer_initializing_formals
    this.cancelToken = cancelToken;
    seconsds = sec;
  }

  CancelToken? cancelToken;
  int seconsds = 1;
  CancelableOperation<dynamic>? dataSub;

  Future<String?> request() async {
    dataSub = CancelableOperation.fromFuture(Future.delayed(Duration(seconds: seconsds)));
    await dataSub?.value;
    return "123";
  }
}
