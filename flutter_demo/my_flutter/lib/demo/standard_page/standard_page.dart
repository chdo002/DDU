import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StandardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标准化'),
      ),
      body: BaseProvider((c) {
        return VM();
      }, (c, w) {
        return const Text('1data');
      }),
    );
  }
}

class VM extends ChangeNotifier {}

class BaseProvider<T extends ChangeNotifier> extends StatelessWidget {
  final Create<T> create;
  final TransitionBuilder? builder;
  const BaseProvider(
    this.create,
    this.builder, {
    Key? key,
    Widget? child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: create, builder: builder);
  }
}
