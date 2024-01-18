import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:stuntsync/features/home/screens/widgets/home_appbar.dart';
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
      body: SingleChildScrollView(child:
        Column(
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
            SSKidsColumn(
              dark: dark,
              kidsName: "Angelia Emily",
              kidsAge: "2 Years Old",
              kidsImage: SSImages.kidsImage,
            ),

            const SizedBox(height: SSSizes.spaceBtwSections),

            /// Recommendation
            SizedBox(
              width: 380.0,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => const BottomNavigationParent());
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  side: const BorderSide(color: Color(0xFF61A3BA)),
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
                  backgroundColor:
                      dark ? SSColors.white : const Color(0xFF61A3BA),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: SSSizes.spaceBtwItems),
                        Text(
                          SSText.recommendation,
                          style: TextStyle(
                              color: dark
                                  ? SSColors.primaryBackground
                                  : SSColors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: SSSizes.spaceBtwItems),
                        Expanded(
                            child: AutoSizeText(
                          SSText.recommendationDetails,
                          maxLines: 4,
                          style: TextStyle(
                              color: dark
                                  ? SSColors.primaryBackground
                                  : SSColors.black),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: SSSizes.spaceBtwSections * 0.5),

            /// Height
            KidsParam(dark: dark, tittle: SSText.height),

            const SizedBox(height: SSSizes.spaceBtwSections * 0.5),

            /// Weight
            KidsParam(dark: dark, tittle: SSText.weight),

            const SizedBox(height: SSSizes.spaceBtwSections * 0.5),

            /// BMI
            KidsParam(dark: dark, tittle: SSText.bmi),
          ],
        ),
      )
    );
  }
}
