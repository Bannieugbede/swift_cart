import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZTermsAndConditionsCheckBox extends StatelessWidget {
  const ZTermsAndConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
        Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '${ZTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: '${ZTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? ZColors.white : ZColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? ZColors.white : ZColors.primary,
                        ),
                  ),
                  TextSpan(
                      text: '${ZTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: ZTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? ZColors.white : ZColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? ZColors.white : ZColors.primary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
