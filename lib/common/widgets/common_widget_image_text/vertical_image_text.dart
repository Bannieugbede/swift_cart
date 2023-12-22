
import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZVerticalImageText extends StatelessWidget {
  const ZVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = ZColors.white,
    this.backgroundColor= ZColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ZSizes.spaceBtwItems),
        child: Column(
          children: [
            // circular icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ZSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? ZColors.black : ZColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? ZColors.light : ZColors.dark),
              ),
            ),
            // text
            const SizedBox(height: ZSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
