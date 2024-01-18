import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class KidsParam extends StatelessWidget {
  const KidsParam({
    super.key,
    required this.dark,
    required this.tittle, this.onPressed, required this.value,
  });

  final bool dark;
  final String tittle, value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 3.0),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(() => const BottomNavigationParent());
          },
          style: ElevatedButton.styleFrom(
            elevation: 5,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
            backgroundColor: dark ? SSColors.white : SSColors.lightGrey,
            side: BorderSide(color: dark ? SSColors.white : SSColors.lightGrey),
          ),
          child: Column(children: [
            Row(
              children: [
                const SizedBox(width: SSSizes.spaceBtwItems),
                Text(tittle,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: SSColors.darkerGrey)),
                IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Iconsax.add_square),
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: SSSizes.spaceBtwItems),
            Row(
              children: [
                const SizedBox(width: SSSizes.defaultSpace),
                Text(value,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: SSColors.primaryBackground)),
              ],
            ),
            const SizedBox(height: SSSizes.spaceBtwItems),
          ]),
        ),
      ),
    );
  }
}
