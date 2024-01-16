import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../images/circular_image.dart';

class SSUserProfileTile extends StatelessWidget {
  const SSUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: /// Avatar
      IconButton(
        iconSize: SSSizes.borderRadiusAvatarLg,
        onPressed: () {},
        icon:
        const CircleAvatar(
          radius: SSSizes.borderRadiusAvatarLg,
          backgroundImage: ExactAssetImage(SSImages.healthCareImage),
          backgroundColor: SSColors.white,
        ),
      ),
      title: Text(
        'John Smith',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: SSColors.white),
      ),
      subtitle: Text(
        'johnsmith@gmail.com',
        style:
        Theme.of(context).textTheme.bodyMedium!.apply(color: SSColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: SSColors.white,
        ),
      ),
    );
  }
}