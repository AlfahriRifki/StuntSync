import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class RecommendationIcon extends StatelessWidget {
  const RecommendationIcon({
    super.key,
    required this.dark, required this.image, required this.text,
  });

  final bool dark;
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 2,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(2.0),
        backgroundColor: dark
            ? SSColors.white
            : SSColors.lightGrey,
        side: BorderSide(
          color: dark
              ? SSColors.white
              : SSColors.lightGrey,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                  width: SSSizes.spaceBtwItems),
              Image(
                image: AssetImage(
                    image),
                width: 90,
                height: 90,
              ),
            ],
          ),
          Text(text,
              style: const TextStyle(
                  color: SSColors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 13)),
        ],
      ),
    );
  }
}
