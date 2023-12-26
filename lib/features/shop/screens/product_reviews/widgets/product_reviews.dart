import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/products/ratings/rating_indicator.dart';
import 'package:swift_cart/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:swift_cart/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const ZAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type if devices/product that you are"),
              const SizedBox(height: ZSizes.spaceBtwItems),

              // overall product ratings
              const ZOverallProductRating(),
              const ZRatingBarIndicator(rating: 3.5),
              Text("20,400", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: ZSizes.spaceBtwSections),

              // user review list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
