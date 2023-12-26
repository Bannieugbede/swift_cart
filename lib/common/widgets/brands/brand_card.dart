import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/images/circular_image.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/enums.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZBrandCard extends StatelessWidget {
  const ZBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ZRoundedContainer(
        padding: const EdgeInsets.all(ZSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // icon
            Flexible(
              child: ZCircularImage(
                isNetworkImage: false,
                image: ZImages.brand1,
                backgroundColor: Colors.transparent,
                overLayColor: ZHelperFunctions.isDarkMode(context)
                    ? ZColors.white
                    : ZColors.black,
              ),
            ),
            const SizedBox(width: ZSizes.spaceBtwItems / 2),
            // text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                      title: 'Gucci', brandTextSize: TextSizes.large),
                  Text('243 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
