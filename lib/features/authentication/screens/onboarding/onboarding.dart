import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stuntsync/features/authentication/controllers/onboarding_controller.dart';
import 'package:stuntsync/utils/constants/colors.dart';
import 'package:stuntsync/utils/constants/image_strings.dart';
import 'package:stuntsync/utils/constants/sizes.dart';
import 'package:stuntsync/utils/constants/text_strings.dart';
import 'package:stuntsync/utils/device/device_utility.dart';

import '../../../../utils/helpers/helper.dart';
import '../widgets/onboarding_navigation.dart';
import '../widgets/onboarding_nextbutton.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SSImages.onBoardingImage1,
                title: SSText.onBoardingTitle1,
                subTitle: SSText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SSImages.onBoardingImage2,
                title: SSText.onBoardingTitle2,
                subTitle: SSText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SSImages.onBoardingImage3,
                title: SSText.onBoardingTitle3,
                subTitle: SSText.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotsNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

