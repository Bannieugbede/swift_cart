import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/images/circular_image.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text.dart';
import 'package:swift_cart/common/widgets/texts/product_price_text.dart';
import 'package:swift_cart/common/widgets/texts/product_title_text.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/enums.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductMetaData extends StatelessWidget {
  const ZProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = ZHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & sale price
        Row(
          children: [
            // sale tag
            ZRoundedContainer(
              radius: ZSizes.sm,
              backgroundColor: ZColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: ZSizes.sm, vertical: ZSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: ZColors.black)),
            ),
            const SizedBox(width: ZSizes.spaceBtwItems),
            // price
            Text('₦450,000',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: ZSizes.spaceBtwItems),
            const ZProductPriceText(price: '300,000', isLarge: true),
          ],
        ),
        const SizedBox(width: ZSizes.spaceBtwItems / 1.5),
        // title
        const ZProductTitleText(title: 'White PS4'),
        const SizedBox(width: ZSizes.spaceBtwItems / 1.5),
        // stock status
        Row(
          children: [
            const ZProductTitleText(title: 'Statue'),
            const SizedBox(width: ZSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: ZSizes.spaceBtwItems / 1.5),
        // brand
        Row(
          children: [
            ZCircularImage(
                image: ZImages.brand2,
                width: 32,
                height: 32,
                overLayColor: darkMode ? ZColors.white : ZColors.black),
            const ZBrandTitleText(title: 'Sony', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
