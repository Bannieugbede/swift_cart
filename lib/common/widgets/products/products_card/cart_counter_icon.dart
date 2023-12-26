import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/features/shop/screens/cart/cart.dart';
import 'package:swift_cart/utils/constants/colors.dart';

class ZCartCounterIcon extends StatelessWidget {
  const ZCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = ZColors.dark,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(Iconsax.shopping_cart, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: ZColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: ZColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
