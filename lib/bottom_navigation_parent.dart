import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/chat/screens/chat.dart';
import 'package:stuntsync/features/home/screens/home2.dart';
import 'package:stuntsync/features/my_kids/kids_icon_bottom.dart';
import 'package:stuntsync/utils/constants/colors.dart';
import 'package:stuntsync/utils/constants/image_strings.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import 'features/home/screens/home.dart';
import 'features/information/screens/information.dart';
import 'features/statistic/statistic.dart';

class BottomNavigationParent extends StatelessWidget {
  const BottomNavigationParent({super.key});

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
            backgroundColor: dark
                ? Colors.black38
                : SSColors.primaryBackground.withOpacity(0.1),
            indicatorColor: SSColors.white.withOpacity(0.1),
            destinations: [
              const NavigationDestination(
                  icon: Icon(Iconsax.home), label: 'Home'),
              const NavigationDestination(
                  icon: Icon(Iconsax.activity), label: 'Statistic'),
              const NavigationDestination(
                  icon: Icon(Iconsax.document), label: 'Information'),
              const NavigationDestination(
                  icon: Icon(Iconsax.message), label: 'Chat'),
              // NavigationDestination(icon: ImageIcon(AssetImage(SSImages.kidsImage)), label: 'My Kids')
              KidsIconButton(
                image: SSImages.kidsImage,
                text: "My Kids",
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: dark ? Colors.black54 : SSColors.white,
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text(
                              "My Kids",
                              style: Theme.of(context).textTheme.titleLarge,
                              ),
                              IconButton(onPressed: (){}, icon: const Icon(Iconsax.add))
                            ],
                            ),

                            Row(children: [
                              KidsIconButton(
                                image: SSImages.kidsImage,
                                text: "Angelia Emily",
                                onPressed: () => Get.to(() => const HomeScreen()),
                              ),
                              KidsIconButton(
                                image: SSImages.kids2Image,
                                text: "Alex Emily",
                                onPressed: () {},
                                // onPressed: () => Get.to(() => const HomeScreen2()),
                              )
                            ],)

                          ],
                        ),
                      );
                    },
                  );
                },
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
    const StatisticPage(),
    const Information(),
    const ChatScreen(),
  ];
}
