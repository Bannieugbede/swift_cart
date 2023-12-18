import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:swift_cart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ZPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  const ZHomeAppBar(),
                  // search bar
                  Container(
                    width: ZDeviceUtils.getScreenWidth(context),
                    padding: const EdgeInsets.all(ZSizes.md),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            BorderRadius.circular(ZSizes.cardRadiusLg),
                        border: Border.all(color: ZColors.grey)),
                  ),

                  // categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
