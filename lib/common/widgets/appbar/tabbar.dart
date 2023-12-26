import 'package:flutter/material.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/device/device_utility.dart';
import 'package:swift_cart/utils/helpers/helper_functions.dart';

class ZTabBar extends StatelessWidget implements PreferredSizeWidget {
  //if i want to add the background color to tab i have to wrap them in Material widget
  //to do this i need preferredSized
  const ZTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? ZColors.black : Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: ZColors.primary,
        labelColor: dark ? ZColors.white : ZColors.primary,
        unselectedLabelColor: ZColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ZDeviceUtils.getAppBarHeight());
}
