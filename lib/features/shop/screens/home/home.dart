import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/shop/screens/all_products/all_products.dart';
import 'package:swift_cart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:swift_cart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:swift_cart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ZPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  ZHomeAppBar(),
                  SizedBox(height: ZSizes.spaceBtwSections),
                  // search bar
                  ZSearchContainer(text: 'search in store'),
                  SizedBox(height: ZSizes.spaceBtwSections),

                  // categories
                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: ZSizes.defaultSpace),
                    child: Column(
                      children: [
                        ZSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: ZSizes.spaceBtwItems),
                        // categories
                        ZHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: ZSizes.spaceBtwSections),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(ZSizes.defaultSpace),
              child: Column(
                children: [
                  // promo slider
                  const ZPromoSlider(banners: [
                    ZImages.banner1,
                    ZImages.banner2,
                    ZImages.banner3
                  ]),
                  const SizedBox(height: ZSizes.spaceBtwSections),
                  // heading
                  ZSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: ZSizes.spaceBtwItems),
                  // popular products
                  ZGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const ZProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
