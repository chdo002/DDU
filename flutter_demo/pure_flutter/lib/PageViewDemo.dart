import 'package:flutter/cupertino.dart';

class SomeWod extends InheritedWidget {
  SomeWod(Key? key, Widget child) : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class FFF extends StatelessElement {
  FFF(StatelessWidget widget) : super(widget);
  @override
  Widget build() {
    this.renderObject;
    return Text("data");
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageViewDemoState();
  }
}

class PageViewDemoState extends State<PageViewDemo> {
  Widget listBuild() {
    return PageView(
      children: const [
        Center(child: Text("data")),
        Center(child: Text("data2"))
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  var _itemCount = 20;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((e) {
      setState(() {
        _itemCount = 11;
      });
    });
    return listBuild();
  }
}
