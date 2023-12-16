import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:swift_cart/features/authentications/screens/onboarding/onboarding_dot_navigation.dart';
import 'package:swift_cart/features/authentications/screens/onboarding/onboarding_next_button.dart';
import 'package:swift_cart/features/authentications/screens/onboarding/onboarding_page.dart';
import 'package:swift_cart/features/authentications/screens/onboarding/onboarding_skip.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ZImages.onBoardingImage1,
                title: ZTexts.onBoardingTitle1,
                subTitle: ZTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ZImages.onBoardingImage2,
                title: ZTexts.onBoardingTitle2,
                subTitle: ZTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ZImages.onBoardingImage3,
                title: ZTexts.onBoardingTitle3,
                subTitle: ZTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),
          // circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
