import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/products/ratings/rating_indicator.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(ZImages.profile0),
                ),
                const SizedBox(width: ZSizes.spaceBtwItems),
                Text('Shocker Nation',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(height: ZSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const ZRatingBarIndicator(rating: 4),
            const SizedBox(width: ZSizes.spaceBtwItems),
            Text('05 Dec, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
        const ReadMoreText(
          'This e-commerce mobile app UI is quite awesome, I was able to navigate and make payment seamlessly. Great app, i love it',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ZColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ZColors.primary),
        ),
        const SizedBox(height: ZSizes.spaceBtwItems),

        // review
        ZRoundedContainer(
          backgroundColor: dark ? ZColors.darkerGrey : ZColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ZSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Swift Cart',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('01 Dec, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: ZSizes.spaceBtwItems),
                const ReadMoreText(
                  'This e-commerce mobile app UI is quite awesome, I was able to navigate and make payment seamlessl. Great app, i love it',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ZColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ZColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ZSizes.spaceBtwSections),
      ],
    );
  }
}
