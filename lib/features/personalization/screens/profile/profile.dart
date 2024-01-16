import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/features/personalization/screens/profile/widget/profile_menu.dart';

import '../../../../common/images/circular_image.dart';
import '../../../../common/texts/section_heading.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SSAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SSCircularImage(
                      image: SSImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              /// -- Details
              const SizedBox(height: SSSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SSSizes.spaceBtwItems),

              /// --- Heading Profile Info
              const SSSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: SSSizes.spaceBtwItems),

              SSProfileMenu(
                title: 'Name',
                value: 'John Smith',
                onPressed: () {},
              ),
              SSProfileMenu(
                title: 'Username',
                value: 'john_smith',
                onPressed: () {},
              ),

              const SizedBox(height: SSSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: SSSizes.spaceBtwItems),

              /// --- Heading Personal Info
              const SSSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: SSSizes.spaceBtwItems),

              SSProfileMenu(
                title: 'User ID',
                value: '23567',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              SSProfileMenu(
                title: 'E-mail',
                value: 'johnsmith@gmail.com',
                onPressed: () {},
              ),
              SSProfileMenu(
                title: 'Phone Number',
                value: '+94-77-555-2277',
                onPressed: () {},
              ),
              SSProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              SSProfileMenu(
                title: 'Date of Birth',
                value: '20 Aug, 1996',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: SSSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}