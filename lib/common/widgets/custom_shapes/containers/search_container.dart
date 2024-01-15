import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper.dart';

class ISearchContainer extends StatelessWidget {
  const ISearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SSSizes.defaultSpace),
        child: Container(
          padding: const EdgeInsets.all(SSSizes.md),
          width: SSDevice.getScreenWidth(),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                ? SSColors.dark
                : SSColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SSSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SSColors.grey) : null,
          ),
          child: Row(children: [
            Icon(icon, color: SSColors.darkerGrey),
            const SizedBox(width: SSSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ]),
        ),
      ),
    );
  }
}