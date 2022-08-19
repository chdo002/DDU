import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliderPage extends StatelessWidget {
  SliderPage({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SlideItem'),
        ),
        body: CustomScrollView(controller: controller, slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 199,
              color: Colors.cyanAccent,
              child: LayoutBuilder(builder: (ctx, constrain) {

                return IgnorePointer(
                  child: PointerDownListener(
                      onPointerDown: (e) {
                        print('来了');
                      },
                      child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: constrain.maxWidth,
                                height: 100,
                                color: const Color.fromARGB(255, 64, 210, 255),
                                child: const Text('123451111111111111111---+'),
                              ),
                              Container(
                                height: 100,
                                color: const Color.fromARGB(255, 64, 150, 255),
                                child: const Text('fasfasfd'),
                              )
                            ],
                          ))),
                );
              }),
            ),
          )
        ]));
  }
}

class PointerDownListener extends SingleChildRenderObjectWidget {
  const PointerDownListener({Key? key, this.onPointerDown, Widget? child}) : super(key: key, child: child);

  final PointerDownEventListener? onPointerDown;

  @override
  RenderObject createRenderObject(BuildContext context) => RenderPointerDownListener()..onPointerDown = onPointerDown;

  @override
  void updateRenderObject(BuildContext context, RenderPointerDownListener renderObject) {
    renderObject.onPointerDown = onPointerDown;
  }
}

class RenderPointerDownListener extends RenderProxyBox {
  PointerDownEventListener? onPointerDown;

  @override
  bool hitTestSelf(Offset position) {
    print('检查');
    return true;
  } //始终通过命中测试

  @override
  void handleEvent(PointerEvent event, covariant HitTestEntry entry) {
    //事件分发时处理事件
    if (event is PointerDownEvent) onPointerDown?.call(event);
  }
}

class FFFSF extends IgnorePointer {
  final VoidCallback callback;

  const FFFSF(this.callback, {Key? key, bool ignor = true, bool? ignoris, Widget? child})
      : super(key: key, child: child, ignoring: ignor, ignoringSemantics: ignoris);

  @override
  RenderIgnorePointer createRenderObject(BuildContext context) {
    return FSFObject(
      callback,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
    );
  }
}

class FSFObject extends RenderIgnorePointer {
  final VoidCallback callback;

  FSFObject(this.callback, {RenderBox? child, bool ignoring = true, bool? ignoringSemantics})
      : super(child: child, ignoring: ignoring, ignoringSemantics: ignoringSemantics);

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    RenderIgnorePointer(child: child, ignoring: false, ignoringSemantics: false);
    final res = super.hitTest(result, position: position);
    if (!res) {
      callback();
    }
    return res;
  }
}
