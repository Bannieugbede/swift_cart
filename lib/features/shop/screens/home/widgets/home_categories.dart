import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/common_widget_image_text/vertical_image_text.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';

class ZHomeCategories extends StatelessWidget {
  const ZHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return ZVerticalImageText(
            image: ZImages.goldIcon,
            title: 'Shoes Categories',
            onTap: () {},
          );
        },
      ),
    );
  }
}
