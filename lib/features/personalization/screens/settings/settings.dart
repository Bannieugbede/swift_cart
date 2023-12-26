import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:swift_cart/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:swift_cart/common/widgets/list_tile/user_profile_tile.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/personalization/screens/address/address.dart';
import 'package:swift_cart/features/personalization/screens/profile/profile.dart';
import 'package:swift_cart/features/shop/screens/cart/cart.dart';
import 'package:swift_cart/features/shop/screens/order/order.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            ZPrimaryHeaderContainer(
              child: Column(
                children: [
                  ZAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: ZColors.white),
                    ),
                  ),

                  // user profile card
                  ZUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: ZSizes.spaceBtwSections),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(ZSizes.defaultSpace),
              child: Column(
                children: [
                  // account setting
                  const ZSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: ZSizes.spaceBtwItems),

                  ZSettingsMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My coupon',
                    subTitle: 'List of all discounted coupons',
                    onTap: () {},
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.security_card,
                    title: 'Account privacy',
                    subTitle: 'Manage account usage and connected accounts',
                    onTap: () {},
                  ),

                  // app settings
                  const SizedBox(height: ZSizes.spaceBtwSections),
                  const ZSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: ZSizes.spaceBtwItems),
                  ZSettingsMenuTitle(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ZSettingsMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  //  logout button
                  const SizedBox(height: ZSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: ZSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
