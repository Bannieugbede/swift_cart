import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/appbar/tabbar.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/brands/brand_card.dart';
import 'package:swift_cart/common/widgets/products/products_card/cart_counter_icon.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/shop/screens/store/widget/category_tab.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: ZAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                      // brand grid
                      ZGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const ZBrandCard(showBorder: true);
                          }),
                    ],
                  ),
                ),
                // tabs
                bottom: const ZTabBar(tabs: [
                  Tab(child: Text('Cloths')),
                  Tab(child: Text('Shoes')),
                  Tab(child: Text('Phones')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ZCategoryTab(),
              ZCategoryTab(),
              ZCategoryTab(),
              ZCategoryTab(),
              ZCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
