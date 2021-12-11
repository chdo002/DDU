import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/PageA.dart';
import 'package:flutter_demo/listView.dart';

void main() {
  runApp(MainVC());
}

class MainVC extends StatelessWidget {
  const MainVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "pageA": (context) {
            return PageA();
          }
        },
        home: Scaffold(
            appBar: AppBar(title: const Text("rootPage")),
            body: ListPageViewB()));
  }
}

class Wraper extends StatelessWidget {
  Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          Navigator.pushNamed(context, "pageA");
          Future.microtask(() => {
                // print("132123");
              });
        },
        child: Container(
            color: Colors.teal,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 100.0,
                ),
                ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 60, minHeight: 100.0),
                    child: UnconstrainedBox(
                        child: ConstrainedBox(
                            constraints:
                                BoxConstraints(minWidth: 100, minHeight: 20),
                            child: Container(height: 5, child: redBox)))),
                const Text("First -> Page1",
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.lightBlue),
                    textDirection: TextDirection.ltr)
              ],
            ))));
  }
}
