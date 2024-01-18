import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SSKidsColumn extends StatelessWidget {
  const SSKidsColumn({
    super.key,
    required this.dark, required this.kidsName, required this.kidsAge, required this.kidsImage,
  });

  final bool dark;
  final String kidsName, kidsAge, kidsImage;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      /// Avatar, Name, Age, Check up Schedule
      Row(
        children: [
          const SizedBox(width: SSSizes.spaceBtwItems),

          /// Avatar
          IconButton(
            iconSize: SSSizes.borderRadiusAvatarLg,
            onPressed: () {},
            icon:
            CircleAvatar(
              radius: SSSizes.borderRadiusAvatarLg,
              backgroundImage: ExactAssetImage(kidsImage),
              backgroundColor: SSColors.buttonPrimary,
            ),
          ),

          const SizedBox(width: SSSizes.spaceBtwItems * 0.5),

          /// Name & Age
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kidsName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
              Text(kidsAge,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
            ],
          ),

          const SizedBox(width: SSSizes.spaceBtwSections ),

          /// Check up Schedule
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(SSText.daysLeft,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
              Text(SSText.nextCheck,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
            ],
          )

        ],
      )
    ],);
  }
}