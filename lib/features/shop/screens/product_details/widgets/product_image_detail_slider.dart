import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/common/widgets/images/rounded_images.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductImageSlider extends StatelessWidget {
  const ZProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return ZCurvedEdgesWidget(
      child: Container(
        color: dark ? ZColors.darkerGrey : ZColors.light,
        child: Stack(
          children: [
            // main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(ZSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(ZImages.productPS),
                  ),
                ),
              ),
            ),
            // image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ZSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => ZRoundedImage(
                      width: 80,
                      backgroundColor: dark ? ZColors.dark : ZColors.white,
                      border: Border.all(color: ZColors.primary),
                      padding: const EdgeInsets.all(ZSizes.sm),
                      imageUrl: ZImages.productPS4),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: ZSizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            // Appbar Icon
            const ZAppBar(
              showBackArrow: true,
              actions: [
                ZCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
