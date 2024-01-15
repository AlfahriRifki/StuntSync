import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Positioned(
      right: SSSizes.defaultSpace,
      bottom: SSDevice.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: SSColors.buttonPrimary,
            side: const BorderSide(color: SSColors.buttonPrimary)),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

