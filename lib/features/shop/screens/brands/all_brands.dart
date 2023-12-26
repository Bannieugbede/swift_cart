import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/brands/brand_card.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/shop/screens/brands/brand_products.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              // heading
              const ZSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: ZSizes.spaceBtwItems),

              // brands
              ZGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => ZBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts())))
            ],
          ),
        ),
      ),
    );
  }
}
