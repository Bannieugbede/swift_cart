import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/images/rounded_images.dart';
import 'package:swift_cart/common/widgets/products/products_card/product_card_horizontal.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZAppBar(
        title: Text('Game'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              // banner
              const ZRoundedImage(
                  width: double.infinity,
                  // height: null,
                  imageUrl: ZImages.banner2,
                  applyImageRadius: true),
              const SizedBox(height: ZSizes.spaceBtwSections),

              // sub categories
              Column(
                children: [
                  // heading
                  ZSectionHeading(title: 'Gaming Devices', onPressed: () {}),
                  const SizedBox(height: ZSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: ZSizes.spaceBtwItems),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const ZProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
