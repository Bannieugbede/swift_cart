import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:swift_cart/common/widgets/images/circular_image.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/products_card/cart_counter_icon.dart';
import 'package:swift_cart/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/enums.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          ZCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: ZHelperFunctions.isDarkMode(context)
                    ? ZColors.black
                    : ZColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ZSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // search bar
                      const SizedBox(height: ZSizes.spaceBtwItems),
                      const ZSearchContainer(
                          text: 'Search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: ZSizes.spaceBtwSections),
                      // featured brands
                      ZSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: ZSizes.spaceBtwItems / 1.5),

                      ZGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: ZRoundedContainer(
                                padding: const EdgeInsets.all(ZSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    // icon
                                    Flexible(
                                      child: ZCircularImage(
                                        isNetworkImage: false,
                                        image: ZImages.brand1,
                                        backgroundColor: Colors.transparent,
                                        overLayColor:
                                            ZHelperFunctions.isDarkMode(context)
                                                ? ZColors.white
                                                : ZColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                        width: ZSizes.spaceBtwItems / 2),
                                    // text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandTitleTextWithVerifiedIcon(
                                              title: 'Gucci',
                                              brandTextSize: TextSizes.large),
                                          Text('243 products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
