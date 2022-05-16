// import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

enum RequestType { get, post }
const int rquestCodeSuccess = 0;

String requestTypeStr(RequestType type) {
  switch (type) {
    case RequestType.get:
      return 'GET';
    case RequestType.post:
      return 'POST';
  }
}

class ResponseModel<T> {
  int code = 0;
  String msg = '';
  T? data;
}

typedef Create<T> = T? Function(Map<String, dynamic> dataJSON);

class Request<DataType> {
  // 关于 creator https://github.com/dart-lang/language/issues/356
  Request(this.path,
      {RequestType? type,
      Map<String, dynamic>? query,
      dynamic data,
      ProgressCallback? onReceiveProgress,
      Options? options,
      CancelToken? cancleToken,
      Create<DataType>? modelBuilder}) {
    queryParameters = query;
    requestData = data;
    if (type != null) {
      this.type = type;
    }
    receiveProgress = onReceiveProgress;
    if (options != null) {
      this.options = options;
    }
    if (cancleToken != null) {
      token = cancleToken;
    }
    dataModelCreator = modelBuilder;
  }

  String path;
  RequestType type = RequestType.get;
  dynamic requestData;
  Map<String, dynamic>? queryParameters;
  ProgressCallback? receiveProgress;
  Options? options = Options(responseType: ResponseType.json);
  Create<DataType>? dataModelCreator;
  CancelToken token = CancelToken();

  // 取消请求
  void cancleRequest([dynamic reason]) {
    token.cancel(reason);
  }

  Future<ResponseModel<DataType>?> request() async {
    final Map<String, dynamic> param = {};
    if (queryParameters != null && queryParameters!.isNotEmpty) {
      param.addAll(queryParameters!);
    }
    final r = await ShareRequest.shareReq();
    Response<Map> res;
    ResponseModel<DataType> model = ResponseModel();
    try {
      res = await r._dio.request<Map>(
        path,
        queryParameters: param,
        options: DioMixin.checkOptions(requestTypeStr(type), options),
        onReceiveProgress: receiveProgress,
        cancelToken: token,
      );
    } catch (e) {
      model.code = -200;
      // model.msg = 'request failed';
      return model;
    }

    final dataJSON = res.data! as Map<String, dynamic>;
    if (kDebugMode) {
      print("请求路径：$path");
      print("返回值：$dataJSON");
    }
    model.code = dataJSON['errno'] as int;
    model.msg = dataJSON['errmsg'] as String;
    Map<String, dynamic> dataDic = dataJSON['data'] as Map<String, dynamic>;
    if (dataModelCreator != null && dataDic.isNotEmpty) {
      model.data = dataModelCreator!(dataDic);
    } else if (dataDic is DataType) {
      model.data = dataDic as DataType?;
    }
    return model;
  }
}

class ShareRequest {
  static ShareRequest? _shareInstance;
  static Future<ShareRequest> shareReq() async {
    if (_shareInstance == null) {
      var baseHost = "api.zhihu.com";
      var baseHostIP = "";
      if (baseHostIP.isEmpty) {
        baseHostIP = baseHost;
      }
      var userAgent = "";
      // var proxy = "";
      var dio = Dio(BaseOptions(
          baseUrl: 'https://' + baseHostIP,
          headers: {'Host': baseHost, 'User-Agent': userAgent}));
      // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      //     (client) {
      //   client.findProxy = (url) {
      //     if (proxy.length < 2) {
      //       return 'DIRECT';
      //     } else {
      //       return 'PROXY ' + proxy;
      //     }
      //   };
      //   client.badCertificateCallback =
      //       (X509Certificate cert, String host, int port) => true;
      //   return null;
      // };
      _shareInstance = ShareRequest(dio);
    }
    return _shareInstance!;
  }

  final Dio _dio;
  ShareRequest(this._dio);
}
