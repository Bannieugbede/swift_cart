import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZFormDivider extends StatelessWidget {
  const ZFormDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? ZColors.darkGrey : ZColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
              color: dark ? ZColors.darkGrey : ZColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
