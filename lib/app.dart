import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_cart/features/authentications/screens/onboarding/onboarding.dart';
import 'package:swift_cart/utils/theme/theme.dart';

// Using this class to setup theme, initial bindings, any animations

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swift Cart',
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
