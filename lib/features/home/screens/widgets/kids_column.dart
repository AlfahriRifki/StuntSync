import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SSKidsColumn extends StatelessWidget {
  const SSKidsColumn({
    super.key,
    required this.dark,
  });

  final bool dark;

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
            const CircleAvatar(
              radius: SSSizes.borderRadiusAvatarLg,
              backgroundImage: ExactAssetImage(SSImages.kidsImage),
              backgroundColor: SSColors.buttonPrimary,
            ),
          ),

          const SizedBox(width: SSSizes.spaceBtwItems * 0.5),

          /// Name & Age
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(SSText.kidsName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
              Text(SSText.kidsAge,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: dark ? SSColors.white : SSColors.black)),
            ],
          ),

          const SizedBox(width: SSSizes.spaceBtwSections * 2),

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