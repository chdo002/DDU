import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("123")), body: Wraper());
  }
}

class Wraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pop("fffm");
        },
        child: Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text("Second -> Page",
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.red),
                  textDirection: TextDirection.ltr),
            )));
  }
}
