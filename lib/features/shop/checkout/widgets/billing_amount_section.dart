import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZBillingAmountSection extends StatelessWidget {
  const ZBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦8,500', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),

        //shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦500', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),

        //tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦5', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),

        //order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('₦5', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
