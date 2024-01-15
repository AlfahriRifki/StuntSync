import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/utils/constants/colors.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import 'features/home/screens/home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    final dark = SSHelper.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
            selectedIndex: controller._selectedIndex.value,
            height: 80,
            elevation: 0,
            onDestinationSelected: (index) =>
            controller._selectedIndex.value = index,
            backgroundColor: dark ? SSColors.primaryBackground : Colors.white,
            indicatorColor: dark ? SSColors.white.withOpacity(0.1) : SSColors.black.withOpacity(0.1),

            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
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
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
}