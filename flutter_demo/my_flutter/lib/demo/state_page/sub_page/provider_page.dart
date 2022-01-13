import 'package:flutter/cupertino.dart';

class ProviderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProviderPageState();
  }
}

class ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('provider demo')), child: Center(child: Text('123')));
  }
}
