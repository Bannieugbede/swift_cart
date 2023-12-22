import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/device/device_utility.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZSearchContainer extends StatelessWidget {
  const ZSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: ZSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: ZDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(ZSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? ZColors.dark
                      : ZColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(ZSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: ZColors.grey) : null),
          child: Row(
            children: [
              Icon(icon, color: ZColors.darkerGrey),
              const SizedBox(width: ZSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
