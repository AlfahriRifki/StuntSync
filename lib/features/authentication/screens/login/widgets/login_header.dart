import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper.dart';

class SSLoginHeader extends StatelessWidget {
  const SSLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      /// Logo, Title, Subtitle
      children: [
        /// Logo
        Image(
          height: 150,
          image: AssetImage(dark ? SSImages.appImageLogo : SSImages.appImageLogo)),
        /// Tittle
        Text(SSText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SSSizes.sm),
        /// Sub-tittle
        Text(SSText.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}