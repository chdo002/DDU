import 'package:flutter/cupertino.dart';
import 'package:flutter_plugin/flutter_plugin.dart';

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

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await FlutterPlugin.platformVersion ?? 'Unknown platform version';
      // ignore: nullable_type_in_catch_clause
    } catch (e) {
      platformVersion = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
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
