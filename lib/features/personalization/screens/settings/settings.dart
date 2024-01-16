import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/texts/section_heading.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../address/address.dart';
import '../profile/profile.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            SSPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  SSAppBar(
                    title: Text(
                      'Settings',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: SSColors.white),
                    ),
                  ),

                  /// User Profile Card
                  SSUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: SSSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(SSSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Account Settings
                  const SSSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: SSSizes.spaceBtwItems),

                  SSSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set addresses for at-home checkups',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const SSSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                  ),
                  const SSSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage & connected accounts',
                  ),
                  const SSSettingsMenuTile(
                    icon: Iconsax.password_check,
                    title: 'Password',
                    subTitle: 'Forgot password and change password',
                  ),

                  /// --- App Settings
                  const SizedBox(height: SSSizes.spaceBtwSections),
                  const SSSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: SSSizes.spaceBtwItems),
                  const SSSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firestore',
                  ),
                  SSSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set service recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// --- Logout Button
                  const SizedBox(height: SSSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: SSSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}