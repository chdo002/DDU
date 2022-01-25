// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class SomeWod extends InheritedWidget {
  const SomeWod(Key? key, Widget child) : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class FFF extends StatelessElement {
  FFF(StatelessWidget widget) : super(widget);
  @override
  Widget build() {
    renderObject;
    return const Text("data");
  }
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PageViewDemoState();
  }
}

class PageViewDemoState extends State<PageViewDemo> {
  Widget listBuild() {
    return PageView(
      children: const [Center(child: Text("data")), Center(child: Text("data2"))],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((e) {
      setState(() {});
    });
    return listBuild();
  }
}
