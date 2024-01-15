import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper.dart';


class SSFormDivider extends StatelessWidget {
  const SSFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? SSColors.darkGrey : SSColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
              color: dark ? SSColors.darkGrey : SSColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )
        ),
        const SizedBox(height: SSSizes.spaceBtwSections),
      ],
    );
  }
}