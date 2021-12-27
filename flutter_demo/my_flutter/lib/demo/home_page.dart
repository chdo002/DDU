import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HSQ1ListView extends StatefulWidget {
  const HSQ1ListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HSQ1ListState();
  }
}

class HSQ1ListState extends State<HSQ1ListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 121,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              color: Colors.blueAccent,
              child: const HSQCOl1ItemView());
        });
  }
}

class HSQCOl1ItemView extends StatelessWidget {
  const HSQCOl1ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("123123");
  }
}
