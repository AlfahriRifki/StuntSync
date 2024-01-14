import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stuntsync/features/authentication/controllers/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper.dart';

class OnBoardingDotsNavigation extends StatelessWidget {
  const OnBoardingDotsNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SSHelper.isDarkMode(context);

    return Positioned(
      bottom: SSDevice.getBottomNavigationBarHeight() + 25,
      left: SSSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? SSColors.light : SSColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
