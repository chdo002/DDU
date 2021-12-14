import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatelessWidget {

  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2), () => "网络数据");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<String>(
        future: mockNetworkData(),
        builder: (BuildContext context, AsyncSnapshot snapshot)
    {
      if (snapshot.connectionState == ConnectionState.done) {
        return Text("data: ${snapshot.data}");
      } else {
        return CircularProgressIndicator();
      }
    }));
  }
}