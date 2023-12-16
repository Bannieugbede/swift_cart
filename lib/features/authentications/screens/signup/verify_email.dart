import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/widgets/success_screen/success_screen.dart';
import 'package:swift_cart/features/authentications/screens/login/login.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // padding to give default equal space on all sides in the screen
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: const AssetImage(ZImages.deliveryEmailIllustration),
                width: ZHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ZSizes.spaceBtwSections),

              // title & subTitle
              Text(ZTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ZSizes.spaceBtwItems),
              Text('support@bannieugbede.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: ZSizes.spaceBtwItems),
              Text(ZTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ZSizes.spaceBtwSections),

              // buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: ZImages.emailVerified,
                          title: ZTexts.yourAccountCreatedTitle,
                          subTitle: ZTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(ZTexts.tContinue)),
              ),
              const SizedBox(height: ZSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(ZTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
