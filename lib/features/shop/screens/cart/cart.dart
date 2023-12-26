import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/features/shop/checkout/checkout.dart';
import 'package:swift_cart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(ZSizes.defaultSpace),

        // items in cart
        child: ZCartItems(),
      ),

      // checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ZSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout ₦80,000')),
      ),
    );
  }
}
