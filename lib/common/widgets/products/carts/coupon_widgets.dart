import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZCouponCode extends StatelessWidget {
  const ZCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return ZRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? ZColors.dark : ZColors.white,
      padding: const EdgeInsets.only(
          top: ZSizes.sm, bottom: ZSizes.sm, right: ZSizes.sm, left: ZSizes.md),
      child: Row(
        children: [
          // textfield
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          // button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? ZColors.white.withOpacity(0.5)
                          : ZColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: const Text('Apply'))),
        ],
      ),
    );
  }
}
