import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/common/styles/spacing_styles.dart';
import 'package:swift_cart/common/widgets/login_signup/form_divider.dart';
import 'package:swift_cart/common/widgets/login_signup/social_buttons.dart';
import 'package:swift_cart/features/authentications/screens/login/widgets/login_form.dart';
import 'package:swift_cart/features/authentications/screens/login/widgets/login_header.dart';
import 'package:swift_cart/utils/constants/sizes.dart';
import 'package:swift_cart/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ZSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo title & subtitle
              const LoginHeader(),

              // login form
              const LoginForm(),

              // divider
              ZFormDivider(dividerText: ZTexts.orSignInWith.capitalize!),
              const SizedBox(height: ZSizes.spaceBtwSections),
              
              // footer
              const ZSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

