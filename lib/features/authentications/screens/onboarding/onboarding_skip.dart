
import 'package:flutter/material.dart';
import 'package:swift_cart/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ZDeviceUtils.getAppBarHeight(),
      right: ZSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}

