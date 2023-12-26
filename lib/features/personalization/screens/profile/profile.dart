import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/common/widgets/images/circular_image.dart';
import 'package:swift_cart/common/widgets/texts/section_heading.dart';
import 'package:swift_cart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:swift_cart/utils/constants/image_strings.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZSizes.defaultSpace),
          child: Column(
            children: [
              // profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const ZCircularImage(
                        image: ZImages.profile0, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              // details
              const SizedBox(height: ZSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ZSizes.spaceBtwItems),

              // heading profile info
              const ZSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: ZSizes.spaceBtwItems),

              ZProfileMenu(
                title: 'Name',
                value: 'Barnabas Ejeh',
                onPressed: () {},
              ),
              ZProfileMenu(
                title: 'UserName',
                value: 'Bannie',
                onPressed: () {},
              ),

              const SizedBox(height: ZSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ZSizes.spaceBtwItems),

              // heading personal info
              const ZSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: ZSizes.spaceBtwItems),

              ZProfileMenu(
                title: 'User ID',
                value: '34783',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ZProfileMenu(
                title: 'E-mail',
                value: 'bannie@email.com',
                onPressed: () {},
              ),
              ZProfileMenu(
                title: 'Phone Number',
                value: '+234-8133-581012',
                onPressed: () {},
              ),
              ZProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              ZProfileMenu(
                title: 'Date of Birth',
                value: '13 Jan 2083',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: ZSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
