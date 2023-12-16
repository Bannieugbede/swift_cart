import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZSocialButton extends StatelessWidget {
  const ZSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ZColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ZSizes.iconLg,
              height: ZSizes.iconLg,
              image: AssetImage(ZImages.google),
            ),
          ),
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ZColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ZSizes.iconLg,
              height: ZSizes.iconLg,
              image: AssetImage(ZImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

