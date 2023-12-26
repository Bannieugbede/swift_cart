import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:swift_cart/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:swift_cart/features/shop/screens/product_details/widgets/product_image_detail_slider.dart';
import 'package:swift_cart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:swift_cart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:swift_cart/features/shop/screens/product_reviews/widgets/product_reviews.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const ZBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            const ZProductImageSlider(),
            // product image
            Padding(
              padding: const EdgeInsets.only(
                right: ZSizes.defaultSpace,
                left: ZSizes.defaultSpace,
                bottom: ZSizes.defaultSpace,
              ),
              child: Column(children: [
                // rating and share
                const ZRatingAndShare(),

                // price, title, stack, brand
                const ZProductMetaData(),

                //  attribute
                const ZProductAttributes(),
                const SizedBox(height: ZSizes.spaceBtwSections),

                // checkout button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout'))),
                const SizedBox(height: ZSizes.spaceBtwSections),

                // description
                const ZSectionHeading(
                    title: 'Description', showActionButton: false),
                const SizedBox(height: ZSizes.spaceBtwItems),
                const ReadMoreText(
                  'This product description for purple PS4. There are more things you can add, come with different disk space size, different colors',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                // reviews
                const Divider(),
                const SizedBox(height: ZSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ZSectionHeading(
                        title: 'Reviews(23)', showActionButton: false),
                    IconButton(
                      onPressed: ()=> Get.to(() => const ProductReviewsScreen()),
                      icon: const Icon(Iconsax.arrow_right_3),
                    ),
                  ],
                ),
                const SizedBox(height: ZSizes.spaceBtwSections),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
