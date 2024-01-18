import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper.dart';


class SSSuccessScreen extends StatelessWidget {
  const SSSuccessScreen(
      {super.key,
        required this.image,
        required this.title,
        required this.subTitle,
        required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: SSSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
              children: [

                /// Image
                Image(
                  image: AssetImage(image),
                  width: SSHelper.screenWidth() * 1.2,
                ),
                const SizedBox(height: SSSizes.spaceBtwSections),

                /// Text
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: SSSizes.spaceBtwItems),

                /// Subtitle
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: SSSizes.spaceBtwSections),

                /// Continue Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(SSText.tContinue),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}