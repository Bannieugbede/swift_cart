import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/widgets/login_signup/form_divider.dart';
import 'package:swift_cart/common/widgets/login_signup/social_buttons.dart';
import 'package:swift_cart/features/authentications/screens/signup/widgets/signup_form.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(ZTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ZSizes.spaceBtwSections),
              // form
              const ZSignUpForm(),
              const SizedBox(height: ZSizes.spaceBtwSections),
              //divider
              ZFormDivider(dividerText: ZTexts.orSignInWith.capitalize!),
              const SizedBox(height: ZSizes.spaceBtwSections),
              // social button
              const ZSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

