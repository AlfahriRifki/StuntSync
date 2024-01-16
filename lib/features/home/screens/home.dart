import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:stuntsync/features/home/screens/widgets/home_appbar.dart';
import 'package:stuntsync/features/home/screens/widgets/kids_column.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
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
                SizedBox(height: 80),
              ],
            ),
          ),

          /// Kids Column
          SSKidsColumn(dark: dark),

          const SizedBox(height: SSSizes.spaceBtwSections),

          /// Recommendation
          SizedBox(
            width: 380.0,
            child: ElevatedButton(
              onPressed: () {
                // Get.to(() => const BottomNavigationParent());
              },
              style: ElevatedButton.styleFrom(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: SSSizes.spaceBtwItems),
                      Text(SSText.recommendation),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: SSSizes.spaceBtwItems),
                      Expanded(
                          child: AutoSizeText(
                        SSText.recommendationDetails,
                        maxLines: 4,
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: SSSizes.spaceBtwSections),

          /// Height
          SizedBox(
            width: 380.0,
            child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => const BottomNavigationParent());
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0)),
                child: const Text(SSText.height)),
          ),

          /// Weight
          /// BMI
        ],
      ),
    ));
  }
}
