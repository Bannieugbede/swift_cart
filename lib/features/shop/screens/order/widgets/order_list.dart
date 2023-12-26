import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZOrderList extends StatelessWidget {
  const ZOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: ZSizes.spaceBtwItems),
      itemBuilder: (_, index) => ZRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(ZSizes.md),
        backgroundColor: dark ? ZColors.dark : ZColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // row 1
            Row(
              children: [
                // icon 1
                const Icon(Iconsax.ship),
                const SizedBox(width: ZSizes.spaceBtwItems / 2),

                // status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: ZColors.primary, fontSizeDelta: 1)),
                      Text('25 Dec 2025',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                // icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: ZSizes.iconSm,
                    ))
              ],
            ),
            const SizedBox(width: ZSizes.spaceBtwItems),

            // row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // icon 1
                      const Icon(Iconsax.tag),
                      const SizedBox(width: ZSizes.spaceBtwItems / 2),

                      // status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#8r24]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //
                Expanded(
                  child: Row(
                    children: [
                      // icon 1
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: ZSizes.spaceBtwItems / 2),

                      // status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('05 Mar 2026',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
