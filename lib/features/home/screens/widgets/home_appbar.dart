import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/features/personalization/screens/settings/settings.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';


class SSHomeAppBar extends StatelessWidget {
  const SSHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SSAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SSText.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: SSColors.white)),
          Text(SSText.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: SSColors.white)),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const SettingsScreen()),
          icon: const Icon(Iconsax.setting_2,
          color: SSColors.white,),
        )
      ],
    );
  }
}