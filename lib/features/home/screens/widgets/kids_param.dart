import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class kids_parameter extends StatelessWidget {
  const kids_parameter({
    super.key,
    required this.dark, required this.tittle,
  });

  final bool dark;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.0,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          // Get.to(() => const BottomNavigationParent());
        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
          backgroundColor:
          dark ? SSColors.white : const Color(0xFF61A3BA),
          side: BorderSide(color: dark ? SSColors.white : const Color(0xFF61A3BA)),

        ),
        child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: SSSizes.spaceBtwItems),
                  Text(
                    tittle,
                    style: TextStyle(
                        color: dark ? SSColors.primaryBackground : SSColors.black),
                  ),
                ],
              ),
            ]
        ),
      ),);
  }
}
