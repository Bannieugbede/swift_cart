import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/products/products_card/cart_counter_icon.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';

class ZHomeAppBar extends StatelessWidget {
  const ZHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ZAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ZTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: ZColors.grey)),
          Text(ZTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: ZColors.white)),
        ],
      ),
      actions: [
        ZCartCounterIcon(onPressed: () {}, iconColor: ZColors.white),
      ],
    );
  }
}
