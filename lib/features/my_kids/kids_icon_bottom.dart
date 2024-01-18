import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class KidsIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final String image;

  const KidsIconButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: SSSizes.borderRadiusAvatar,
      onPressed: onPressed,
      icon: Column(
        children: [
          const SizedBox(height: SSSizes.sm),
          CircleAvatar(
            radius: SSSizes.borderRadiusAvatar,
            backgroundImage: ExactAssetImage(image),
            backgroundColor: SSColors.buttonPrimary,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
