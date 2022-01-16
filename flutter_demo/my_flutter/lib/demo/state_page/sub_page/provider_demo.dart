import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: ChangeNotifierProvider(
          create: (context) => CartViewModel(),
          builder: (c, child) {
            return Column(mainAxisSize: MainAxisSize.min, children: [
              Consumer<CartViewModel>(
                builder: (context, vm, child) {
                  return Text('数量 ${vm.count}');
                },
              ),
              CupertinoButton(
                  child: const Text('加'),
                  onPressed: () {
                    Provider.of<CartViewModel>(c, listen: false).addCount();
                  }),
              const Divider(color: Colors.black),
              _ValueDemoPage(),
              const Divider(color: Colors.black),
              _ValueListenenableDemoPage()
            ]);
          }),
    ));
  }
}

class CartViewModel extends ChangeNotifier {
  int count = 0;
  addCount() {
    count += 1;
    notifyListeners();
  }
}

class _ValueDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: CartViewModel(),
        builder: (context, wid) {
          return Column(children: [
            Text("Value demo:${Provider.of<CartViewModel>(context).count}"),
            CupertinoButton(
                color: Colors.teal,
                child: const Text('点击'),
                onPressed: () {
                  Provider.of<CartViewModel>(context, listen: false).addCount();
                })
          ]);
        });
  }
}

class _ValueListenenableDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ValueNotifier(CartViewModel()),
        builder: (context, cartVM, widget) {
          return Column(children: [
            Text('Value'),
            CupertinoButton(
              child: Text("123"),
              onPressed: () {},
            )
          ]);
        });
  }
}
