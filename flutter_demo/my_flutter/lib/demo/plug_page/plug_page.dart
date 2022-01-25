import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PlugPage extends StatefulWidget {
  const PlugPage({Key? key}) : super(key: key);

  @override
  State<PlugPage> createState() => _PlugPageState();
}

class _PlugPageState extends State<PlugPage> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await const MethodChannel('test_method').invokeMethod('method');
    } catch (e) {
      platformVersion = e.toString();
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Plugin example app'),
      ),
      child: Center(
        child: Text('Running on: $_platformVersion\n'),
      ),
    );
  }
}
