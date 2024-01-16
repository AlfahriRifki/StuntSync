import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SSSingleAddress extends StatelessWidget {
  const SSSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return SSRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(SSSizes.md),
      backgroundColor: selectedAddress
          ? SSColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? SSColors.darkerGrey
          : SSColors.grey,
      margin: const EdgeInsets.only(bottom: SSSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                  ? SSColors.light
                  : SSColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SSSizes.sm / 2),
              const Text(
                '(+123) 456 7764',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: SSSizes.sm / 2),
              const Text(
                '82365 Timmy Cloves, South Liana, Maine, 87655, USA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}