import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZBottomAddToCart extends StatelessWidget {
  const ZBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ZSizes.defaultSpace, vertical: ZSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? ZColors.darkerGrey : ZColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(ZSizes.cardRadiusLg),
          topRight: Radius.circular(ZSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ZCircularIcon(
                  icon: Iconsax.minus,
                  backgroundColor: ZColors.darkGrey,
                  height: 40,
                  width: 40,
                  color: ZColors.white),
              const SizedBox(width: ZSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: ZSizes.spaceBtwItems),
              const ZCircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: ZColors.black,
                  height: 40,
                  width: 40,
                  color: ZColors.white),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(ZSizes.md),
              backgroundColor: ZColors.black,
              side: const BorderSide(color: ZColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
