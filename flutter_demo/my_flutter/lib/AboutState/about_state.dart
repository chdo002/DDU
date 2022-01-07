import 'package:flutter/cupertino.dart';

class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({Key? key, required this.name, required Widget child})
      : super(key: key, child: child);
  final String name;

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.name != name;
  }
}

class FaterSateView extends StatefulWidget {
  const FaterSateView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FaterSate();
  }
}

class FaterSate extends State<FaterSateView> {
  var name = "123";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("FaterSate: build");
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        name = "fff2";
      });
    });
    return ShareDataWidget(
        name: name, child: Column(children: [Text(name), SonSateView()]));
  }
}

class SonSateView extends StatefulWidget {
  const SonSateView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SonSate();
  }
}

class SonSate extends State<SonSateView> {
  @override
  Widget build(BuildContext context) {
    return Text("son Widget: ${ShareDataWidget.of(context)?.name}");
  }
}
