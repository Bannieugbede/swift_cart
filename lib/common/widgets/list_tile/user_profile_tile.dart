import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/images/circular_image.dart';
import 'package:swift_cart/utils/constants/colors.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';

class ZUserProfileTile extends StatelessWidget {
  const ZUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ZCircularImage(
          image: ZImages.profile0, width: 50, height: 50, padding: 0),
      title: Text(
        'Barnabas Ejeh',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: ZColors.white),
      ),
      subtitle: Text(
        'EjehBarnabasUgbede@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: ZColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.edit, color: ZColors.white)),
    );
  }
}
