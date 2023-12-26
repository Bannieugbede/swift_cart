import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/brands/brand_show_case.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZCategoryTab extends StatelessWidget {
  const ZCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(ZSizes.defaultSpace),
            child: Column(
              children: [
                // brands
                const ZBrandShowCase(
                  images: [
                    ZImages.product3,
                    ZImages.product2,
                    ZImages.product0
                  ],
                ),
                const ZBrandShowCase(
                  images: [
                    ZImages.product3,
                    ZImages.product2,
                    ZImages.product0
                  ],
                ),
                const SizedBox(height: ZSizes.spaceBtwItems),
                // products
                ZSectionHeading(title: 'You might like', onPressed: () {}),
                const SizedBox(height: ZSizes.spaceBtwItems),
                ZGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ZProductCardVertical()),
                const SizedBox(height: ZSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
