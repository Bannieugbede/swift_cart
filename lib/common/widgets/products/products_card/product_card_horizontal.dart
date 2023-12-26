import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/common/widgets/images/rounded_images.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text.dart';
import 'package:swift_cart/common/widgets/texts/product_price_text.dart';
import 'package:swift_cart/common/widgets/texts/product_title_text.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductCardHorizontal extends StatelessWidget {
  const ZProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ZSizes.productImageRadius),
        color: dark ? ZColors.darkerGrey : ZColors.lightContainer,
      ),
      child: Row(
        children: [
          // thumbnail
          ZRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ZSizes.sm),
            backgroundColor: dark ? ZColors.dark : ZColors.light,
            child: Stack(
              children: [
                // thumbnail image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: ZRoundedImage(
                      imageUrl: ZImages.product3, applyImageRadius: true),
                ),

                //
                Positioned(
                  top: 12,
                  child: ZRoundedContainer(
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
                ),
                // favorite icon button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: ZCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),
          // details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: ZSizes.sm, left: ZSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ZProductTitleText(
                          title:
                              'Good product for you just make your selection',
                          smallSize: true),
                      SizedBox(height: ZSizes.spaceBtwItems / 2),
                      ZBrandTitleText(title: 'Gucci'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // pricing
                      const Flexible(child: ZProductPriceText(price: '4500')),

                      // add to cart button
                      Container(
                        decoration: const BoxDecoration(
                          color: ZColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ZSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(ZSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: ZSizes.iconLg * 1.2,
                          height: ZSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: ZColors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
