import 'package:flutter/material.dart';

class ImgSourceDelegate extends FlowDelegate {
  final AnimationController animation;
  ImgSourceDelegate({required this.animation}) : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    const buttonSize = 56;
    const buttonRadius = buttonSize / 2;
    const buttonMargin = 5;

    final positionX = context.size.width - buttonSize;
    final positionY = context.size.height - buttonSize;
    final lastIndex = context.childCount - 1;

    for (int i = lastIndex; i >= 0; i--) {
      final y = positionY - ((buttonSize + buttonMargin) * i * animation.value);
      final size = (i != 0) ? animation.value : 1.0;

      context.paintChild(
        i,
        transform: Matrix4.translationValues(positionX, y, 0)
          ..translate(buttonRadius, buttonRadius)
          ..scale(size)
          ..translate(-buttonRadius, -buttonRadius),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
