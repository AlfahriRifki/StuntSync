import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/features/my_kids/add_kids.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../utils/constants/image_strings.dart';
import '../home/screens/home.dart';
import '../home/screens/home2.dart';
import '../personalization/screens/address/add_new_address.dart';
import 'kids_icon_bottom.dart';


class MyKidsScreen extends StatelessWidget {
  const MyKidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewKidsScreen()),
        backgroundColor: SSColors.primary,
        child: const Icon(
          Iconsax.add,
          color: SSColors.white,
        ),
      ),
      appBar: SSAppBar(
        showBackArrow: true,
        title: Text('My Kids', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSSizes.defaultSpace),
          child: Column(
            children: [
              Row(children: [
                KidsIconButton(
                  image: SSImages.kidsImage,
                  text: "Angelia Emily",
                  onPressed: () => Get.to(() => const HomeScreen()),
                ),
                KidsIconButton(
                  image: SSImages.kids2Image,
                  text: "Alex Emily",
                  onPressed: () => Get.to(() => const HomeScreen2()),
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}