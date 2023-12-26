import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/styles/shadows.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/common/widgets/images/rounded_images.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:swift_cart/common/widgets/texts/product_price_text.dart';
import 'package:swift_cart/common/widgets/texts/product_title_text.dart';
import 'package:swift_cart/features/shop/screens/product_details/product_details.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductCardVertical extends StatelessWidget {
  const ZProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);

    // container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ZShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ZSizes.productImageRadius),
          color: dark ? ZColors.darkerGrey : ZColors.white,
        ),
        child: Column(
          children: [
            // thumbnail, wishlist button discount tag
            ZRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ZSizes.sm),
              backgroundColor: dark ? ZColors.dark : ZColors.light,
              child: Stack(
                children: [
                  // thumbnail image
                  const ZRoundedImage(
                      imageUrl: ZImages.productPS, applyImageRadius: true),
                  // sale tag
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
                    child:
                        ZCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: ZSizes.spaceBtwItems / 2),
            // details
            const Padding(
              padding: EdgeInsets.only(left: ZSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ZProductTitleText(
                      title: 'Nice product for you', smallSize: true),
                  SizedBox(height: ZSizes.spaceBtwItems / 2),
                  BrandTitleTextWithVerifiedIcon(title: 'PS4'),
                ],
              ),
            ),
            // add spacer here to keep the height of each box
            const Spacer(),
            // price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                const Padding(
                  padding: EdgeInsets.only(left: ZSizes.sm),
                  child: ZProductPriceText(price: '5000'),
                ),
                //  add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: ZColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ZSizes.cardRadiusMd),
                      bottomLeft: Radius.circular(ZSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: ZSizes.iconLg * 1.2,
                    height: ZSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: ZColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
