import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/brands/brand_card.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZBrandShowCase extends StatelessWidget {
  const ZBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ZRoundedContainer(
      showBorder: true,
      borderColor: ZColors.darkGrey,
      padding: const EdgeInsets.all(ZSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: ZSizes.spaceBtwItems),
      child: Column(
        children: [
          // brand with product count
          const ZBrandCard(showBorder: false),
          const SizedBox(height: ZSizes.spaceBtwItems),
          // brand top 3 product image
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: ZRoundedContainer(
        height: 100,
        backgroundColor: ZHelperFunctions.isDarkMode(context)
            ? ZColors.darkerGrey
            : ZColors.light,
        margin: const EdgeInsets.only(right: ZSizes.sm),
        padding: const EdgeInsets.all(ZSizes.sm),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
