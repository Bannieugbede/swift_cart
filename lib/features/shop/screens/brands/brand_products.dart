import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/brands/brand_card.dart';
import 'package:swift_cart/common/widgets/products/sortable/sortable_products.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ZAppBar(
        title: Text('Gucci'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(children: [
            // brand detail
            ZBrandCard(showBorder: true),
            SizedBox(height: ZSizes.spaceBtwSections),
            ZSortableProducts(),
          ],),
        ),
      ),
    );
  }
}
