// ignore_for_file: file_names
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("123")), body: const Wraper());
  }
}

class Wraper extends StatelessWidget {
  const Wraper({Key? key}) : super(key: key);

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
                  style: TextStyle(color: Colors.white, backgroundColor: Colors.red), textDirection: TextDirection.ltr),
            )));
  }
}
