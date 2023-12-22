import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZRoundedContainer extends StatelessWidget {
  const ZRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = ZSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.backgroundColor = ZColors.white,
    this.padding,
    this.margin,
    this.borderColor = ZColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
