import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/chips/choice_chip.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/texts/product_title_text.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZProductAttributes extends StatelessWidget {
  const ZProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selected attribute pricing & description
        ZRoundedContainer(
          padding: const EdgeInsets.all(ZSizes.md),
          backgroundColor: dark ? ZColors.darkerGrey : Colors.grey,
          child: Column(
            children: [
              // title, price and stack sta
              Row(
                children: [
                  const ZSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: ZSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ZProductTitleText(
                              title: 'Price : ', smallSize: true),
                          // actual price
                          Text(
                            '₦450,000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: ZSizes.spaceBtwItems / 2),

                          // sale price
                          const ZProductTitleText(title: '₦350,000'),
                        ],
                      ),
                      // stock
                      Row(
                        children: [
                          // const SizedBox(width: ZSizes.spaceBtwItems),
                          const ZProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // variation description
              const ZProductTitleText(
                title:
                    'This is the description of the product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: ZSizes.spaceBtwItems),

        // attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ZSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: ZSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ZChoiceChip(
                    text: 'Purple', selected: true, onSelected: (value) {}),
                ZChoiceChip(
                    text: 'Green', selected: false, onSelected: (value) {}),
                ZChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ZSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: ZSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ZChoiceChip(
                    text: 'GB 128', selected: false, onSelected: (value) {}),
                ZChoiceChip(
                    text: 'GB 256', selected: true, onSelected: (value) {}),
                ZChoiceChip(
                    text: 'GB 500', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
