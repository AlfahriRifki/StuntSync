import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class SSCircularContainer extends StatelessWidget {
  const SSCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.margin,
    this.radius = 400,
    this.padding = 0,
    this.background = SSColors.white,
  });
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final double radius;
  final double padding;
  final Widget? child;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(radius)),
    );
  }
}