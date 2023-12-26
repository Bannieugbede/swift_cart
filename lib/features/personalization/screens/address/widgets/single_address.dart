import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return ZRoundedContainer(
      padding: const EdgeInsets.all(ZSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? ZColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? ZColors.darkerGrey
              : ZColors.grey,
      margin: const EdgeInsets.only(bottom: ZSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? ZColors.light
                        : ZColors.dark.withOpacity(0.6)
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bannie Ugbede',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ZSizes.sm / 2),
              const Text(
                '(+234) 348 29783',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: ZSizes.sm / 2),
              const Text(
                '346 konnon street, off maitama road, FCT Abuja',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
