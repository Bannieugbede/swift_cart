import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:swift_cart/common/widgets/products/carts/coupon_widgets.dart';
import 'package:swift_cart/common/widgets/success_screen/success_screen.dart';
import 'package:swift_cart/features/shop/checkout/widgets/billing_address_section.dart';
import 'package:swift_cart/features/shop/checkout/widgets/billing_amount_section.dart';
import 'package:swift_cart/features/shop/checkout/widgets/billing_payment_section.dart';
import 'package:swift_cart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:swift_cart/navigation_menu.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: ZAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              // items in cart
              const ZCartItems(showAddRemoveButtons: false),
              const SizedBox(height: ZSizes.spaceBtwSections),

              //  coupon text
              const ZCouponCode(),
              const SizedBox(height: ZSizes.spaceBtwSections),

              // billing section
              ZRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(ZSizes.md),
                backgroundColor: dark ? ZColors.black : ZColors.white,
                child: const Column(
                  children: [
                    // pricing
                    ZBillingAmountSection(),
                    SizedBox(height: ZSizes.spaceBtwItems),

                    // divider
                    Divider(),
                    SizedBox(height: ZSizes.spaceBtwItems),

                    // payment method
                    ZBillingPaymentSection(),
                    SizedBox(height: ZSizes.spaceBtwItems),

                    // address
                    ZBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ZSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: ZImages.emailVerified,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon',
                onPressed: () => Get.offAll(() => const NavigationMenu()))),
            child: const Text('Checkout ₦80,000')),
      ),
    );
  }
}
