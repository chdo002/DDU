import 'package:flutter/material.dart';

class ListPageView extends StatelessWidget {
  const ListPageView({Key? key}) : super(key: key);

  Widget constList() {
    var arr = <Widget>[];
    for (var i = 0; i < 20; i++) {
      arr.add(Text(" item - $i "));
    }
    return ListView(itemExtent: 40, children: arr);
  }

  Widget listBuild() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 121,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.all(10),
              width: 10,
              height: 150,
              color: Colors.blueAccent,
              child: Text(" text $index"));
        });
  }

  @override
  Widget build(BuildContext context) {
    return listBuild();
  }
}

class ListPageViewB extends StatefulWidget {
  const ListPageViewB({Key? key}) : super(key: key);

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
          return Text(" text $index");
        });
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
