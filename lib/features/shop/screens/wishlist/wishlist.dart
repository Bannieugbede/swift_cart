import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/icons/circular_icon.dart';
import 'package:swift_cart/common/widgets/layouts/grid_layout.dart';
import 'package:swift_cart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:swift_cart/features/shop/screens/home/home.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          ZCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              ZGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const ZProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
