import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/home/screens/widgets/add_height.dart';
import 'package:stuntsync/features/home/screens/widgets/add_weight.dart';
import 'package:stuntsync/features/home/screens/widgets/home_appbar.dart';
import 'package:stuntsync/features/home/screens/widgets/home_slider.dart';
import 'package:stuntsync/features/home/screens/widgets/kids_column.dart';
import 'package:stuntsync/features/home/screens/widgets/kids_param.dart';
import 'package:stuntsync/utils/constants/image_strings.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const SSPrimaryHeaderContainer(
              child: Column(
                children: [
                  SSHomeAppBar(),
                  SizedBox(height: 40),
                ],
              ),
            ),

            /// Kids Column
            SSKidsColumn(
              dark: dark,
              kidsName: "Angelia Emily",
              kidsAge: "2 Years Old",
              kidsImage: SSImages.kidsImage,
            ),
            const SizedBox(height: SSSizes.sm),

            /// Heading
            Text(
              "Nearby Healthcare Institution",
              style: Theme.of(Get.context!).textTheme.headlineSmall,
              textAlign: TextAlign.left,
            ),

            /// Nearby Healthcare Institution
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Column(
                children: [
                  /// Promo Slider
                  const SSHomeSlider(
                    banners: [
                      (SSImages.pantiRapih),
                      (SSImages.sardjito),
                      (SSImages.bethesda),
                    ],
                  ),
                  KidsParam(
                    dark: dark,
                    tittle: SSText.height,
                    value: "78.3",
                    onPressed: () => Get.to(() => const AddHeightScreen()),
                  ),

                  /// Weight
                  KidsParam(
                      dark: dark,
                      tittle: SSText.weight,
                      value: "11.3",
                      onPressed: () => Get.to(() => const AddWeightScreen())),

                ],
              ),
            ),

            /// BMI
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // Get.to(() => const BottomNavigationParent());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
                    backgroundColor: dark ? SSColors.white : SSColors.lightGrey,
                    side: BorderSide(
                        color: dark ? SSColors.white : SSColors.lightGrey),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: SSSizes.spaceBtwItems),
                          Text(
                            SSText.bmi,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: SSColors.darkerGrey),
                          ),
                        ],
                      ),
                      const SizedBox(height: SSSizes.spaceBtwItems),
                      Row(
                        children: [
                          const SizedBox(width: SSSizes.defaultSpace),
                          Text('18.4',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(color: SSColors.primaryBackground)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
