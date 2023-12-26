import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/products/carts/add_remove.dart';
import 'package:swift_cart/common/widgets/products/carts/cart_item.dart';
import 'package:swift_cart/common/widgets/texts/product_price_text.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZCartItems extends StatelessWidget {
  const ZCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: ZSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          // cart items
          const CartItems(),
          if (showAddRemoveButtons)
            const SizedBox(height: ZSizes.spaceBtwItems),

          // add remove button row with total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // extra space
                    SizedBox(width: 70),
                    // add remove buttons
                    ZProductQualityWithAddRemove(),
                  ],
                ),

                // total price
                ZProductPriceText(price: '7500'),
              ],
            )
        ],
      ),
    );
  }
}
