import 'package:flutter/material.dart';
import 'navi.dart';
import 'dart:developer' as dev;

void main(List<String> args) {
  runApp(const MaterialApp(
    title: "My app",
    home: SafeArea(child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Row(
            children: const [
              IconButton(onPressed: null, icon: Icon(Icons.menu))
            ],
          ),
          const Expanded(
              child: Center(
                  child: Text(
            "data",
            textDirection: TextDirection.rtl,
          ))),
          GestureDetector(
            onTap: () {
              print("123");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.orange),
              height: 50,
              child: const Center(
                child: Text("123"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
