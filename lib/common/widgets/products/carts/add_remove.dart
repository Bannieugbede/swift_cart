
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductQualityWithAddRemove extends StatelessWidget {
  const ZProductQualityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisSize: MainAxisSize.min,
      children: [
        ZCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ZSizes.md,
          color: ZHelperFunctions.isDarkMode(context)
              ? ZColors.white
              : ZColors.black,
          backgroundColor: ZHelperFunctions.isDarkMode(context)
              ? ZColors.darkerGrey
              : ZColors.light,
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
        Text('2',
            style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: ZSizes.spaceBtwItems),
        ZCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ZSizes.md,
          color: ZColors.white,
          backgroundColor: ZColors.primary,
        ),
      ],
    );
  }
}
