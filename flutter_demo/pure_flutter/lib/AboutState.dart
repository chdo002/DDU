import 'package:flutter/cupertino.dart';

class FaterSateView extends StatefulWidget {
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
    Future.delayed(Duration(seconds: 3)).then((value) {
      setState(() {
        name = "fff2";
      });
    });
    return Column(children: [Text(name), SonSateView()]);
  }
}

class SonSateView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SonSate();
  }
}

class SonSate extends State<SonSateView> {
  @override
  Widget build(BuildContext context) {
    print("SonSate: build");
    return Text("son Widget");
  }
}
