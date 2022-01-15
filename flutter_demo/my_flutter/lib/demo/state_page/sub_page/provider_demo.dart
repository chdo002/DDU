import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter/demo/state_page/sub_page/somple_provider_page.dart';
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
                  child: Text('点'),
                  onPressed: () {
                    Provider.of<CartViewModel>(c, listen: false).addCount();
                  })
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
