
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZSortableProducts extends StatelessWidget {
  const ZSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map(
                (option) =>
                    DropdownMenuItem(value: option, child: Text(option)),
              )
              .toList(),
        ),
        const SizedBox(height: ZSizes.spaceBtwSections),
        // products
        ZGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const ZProductCardVertical()),
      ],
    );
  }
}
