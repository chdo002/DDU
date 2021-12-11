import 'package:flutter/cupertino.dart';

class ListPageView extends StatelessWidget {
  Widget constList() {
    var arr = <Widget>[];
    for (var i = 0; i < 20; i++) {
      arr.add(Text(" item - ${i} "));
    }
    return ListView(itemExtent: 40, children: arr);
  }

  Widget listBuild() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Text(" text ${index}");
        });
  }

  @override
  Widget build(BuildContext context) {
    // return constList();
    return listBuild();
  }
}

class ListPageViewB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListPageViewState();
  }
}

class ListPageViewState extends State<ListPageViewB> {
  Widget listBuild() {
    return ListView.builder(
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Text(" text ${index}");
        });
  }

  var _itemCount = 20;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((e) {
      setState(() {
        _itemCount = 11;
      });
    });
    return listBuild();
  }
}
