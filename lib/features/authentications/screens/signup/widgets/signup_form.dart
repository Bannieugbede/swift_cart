import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/features/authentications/screens/signup/verify_email.dart';
import 'package:swift_cart/features/authentications/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';

class ZSignUpForm extends StatelessWidget {
  const ZSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ZTexts.firstName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ZSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ZTexts.lastName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ZSizes.spaceBtwInputFields),
          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ZTexts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: ZSizes.spaceBtwInputFields),
          // email
          TextFormField(
            decoration: const InputDecoration(
              labelText: ZTexts.email,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: ZSizes.spaceBtwInputFields),
          // phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: ZTexts.phoneNumber,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ZSizes.spaceBtwInputFields),
          // password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: ZTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ZSizes.spaceBtwSections),
          // terms and conditions check
          const ZTermsAndConditionsCheckBox(),
          const SizedBox(height: ZSizes.spaceBtwSections),
          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(ZTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
