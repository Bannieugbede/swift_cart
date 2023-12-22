import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/features/shop/screens/home/home.dart';
import 'package:swift_cart/features/shop/screens/store/store.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = ZHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? ZColors.black : ZColors.white,
          indicatorColor: darkMode
              ? ZColors.white.withOpacity(0.1)
              : ZColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

// Getx navigation controller
class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  // selected screens
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
  ];
}
