import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SSRoundedContainer extends StatelessWidget {
  const SSRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.radius = SSSizes.cardRadiusLg,
    this.padding,
    this.backgroundColor = SSColors.white,
    this.showBorder = false,
    this.borderColor = SSColors.borderPrimary,
  });
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}