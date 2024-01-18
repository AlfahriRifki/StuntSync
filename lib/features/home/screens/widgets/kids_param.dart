import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class KidsParam extends StatelessWidget {
  const KidsParam({
    super.key,
    required this.dark,
    required this.tittle, this.onPressed,
  });

  final bool dark;
  final String tittle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.0,
      height: 115,
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
        ]),
      ),
    );
  }
}
