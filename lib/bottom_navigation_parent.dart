import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/chat/screens/chat.dart';
import 'package:stuntsync/utils/constants/colors.dart';
import 'package:stuntsync/utils/constants/image_strings.dart';
import 'package:stuntsync/utils/constants/sizes.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import 'features/home/screens/home.dart';

class BottomNavigationParent extends StatelessWidget {
  const BottomNavigationParent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    final dark = SSHelper.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
            () =>
            NavigationBar(
                selectedIndex: controller._selectedIndex.value,
                height: 80,
                elevation: 0,
                onDestinationSelected: (index) =>
                controller._selectedIndex.value = index,
                backgroundColor: dark ? SSColors.primaryBackground : Colors
                    .white,
                indicatorColor: dark
                    ? SSColors.white.withOpacity(0.1)
                    : SSColors.black.withOpacity(0.1),
                destinations:  [
                  const NavigationDestination(
                      icon: Icon(Iconsax.home), label: 'Home'),
                  const NavigationDestination(
                      icon: Icon(Iconsax.activity), label: 'Statistic'),
                  const NavigationDestination(
                      icon: Icon(Iconsax.document), label: 'Information'),
                  const NavigationDestination(
                      icon: Icon(Iconsax.message), label: 'Chat'),
                  // NavigationDestination(icon: ImageIcon(AssetImage(SSImages.kidsImage)), label: 'My Kids')
                  IconButton(
                      iconSize: SSSizes.borderRadiusAvatar,
                      onPressed: () {},
                      icon: Column(
                        children: [
                          const SizedBox(height: SSSizes.sm),
                          const CircleAvatar(
                            radius: SSSizes.borderRadiusAvatar,
                            backgroundImage: ExactAssetImage(SSImages.kidsImage),
                            backgroundColor: SSColors.buttonPrimary,
                          ),
                          // Image.asset(
                          //   SSImages.kidsImage,
                          // ),
                          Text("My Kids",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                  )

                ]),
      ),
      body: Obx(() => controller.screen[controller._selectedIndex.value]),
    );
  }
}

class BottomNavigationController extends GetxController {
  final Rx<int> _selectedIndex = 0.obs;
  final screen = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    const ChatScreen(),
  ];
}
