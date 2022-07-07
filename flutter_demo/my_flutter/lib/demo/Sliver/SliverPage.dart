import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(),
        ),
        child: SafeArea(
            child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.amber)),
          const SliverToBoxAdapter(
            child:
                // Container(
                //   height: 400,
                //   child: Center(
                //     child:
                Image(
              image: AssetImage('resource/avatar.jpg'),
              height: 250,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
            ),
            //   ),
            // ),
          ),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue))
        ])));
  }
}
