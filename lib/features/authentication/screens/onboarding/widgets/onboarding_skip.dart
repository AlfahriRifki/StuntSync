import 'package:flutter/material.dart';
import 'package:stuntsync/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Positioned(
      top: SSDevice.getAppBarHeight(),
      right: SSSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          style: TextButton.styleFrom(foregroundColor: dark ? Colors.white70 : Colors.grey),
          child: const Text('Skip'),
    ));
  }
}