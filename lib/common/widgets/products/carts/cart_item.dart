
import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/images/rounded_images.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:swift_cart/common/widgets/texts/product_title_text.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // image
        ZRoundedImage(
          imageUrl: ZImages.product3,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(ZSizes.sm),
          backgroundColor: ZHelperFunctions.isDarkMode(context)
              ? ZColors.darkerGrey
              : ZColors.light,
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
    
        //  title price size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: ZProductTitleText(
                    title: 'Green T-Shirt', maxLines: 1),
              ),
    
              // attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color',
                        style:
                            Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green',
                        style:
                            Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'Size',
                        style:
                            Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'UK 22',
                        style:
                            Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
