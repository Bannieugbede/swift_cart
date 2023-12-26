import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ZBillingAddressSection extends StatelessWidget {
  const ZBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ZSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Bannie Ugbede', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),

        //
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: ZSizes.spaceBtwItems),
            Text('+234 80-823-2378',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ZSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: ZSizes.spaceBtwItems),
            Expanded(
                child: Text('346 konnon street, off maitama road, FCT Abuja',
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true)),
          ],
        ),
      ],
    );
  }
}
