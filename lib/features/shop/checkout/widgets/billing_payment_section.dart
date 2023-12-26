import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZBillingPaymentSection extends StatelessWidget {
  const ZBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ZSectionHeading(
            title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),
        Row(
          children: [
            ZRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? ZColors.light : ZColors.white,
              padding: const EdgeInsets.all(ZSizes.sm),
              child: const Image(
                  image: AssetImage(ZImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: ZSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
