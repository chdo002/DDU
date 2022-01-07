
import 'dart:async';

import 'package:flutter/services.dart';

class MyFlutterPlug {
  static const MethodChannel _channel = MethodChannel('my_flutter_plug');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
