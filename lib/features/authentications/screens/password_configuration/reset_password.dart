import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
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
                Text(ZTexts.changeYourPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: ZSizes.spaceBtwItems),
                Text(ZTexts.changeYourPasswordSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: ZSizes.spaceBtwSections),
        
                // buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(ZTexts.done)),
                ),
                const SizedBox(height: ZSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(ZTexts.resendEmail)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
