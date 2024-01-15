import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/login/widgets/login_form.dart';
import 'package:stuntsync/features/authentication/screens/login/widgets/login_form_divider.dart';
import 'package:stuntsync/features/authentication/screens/login/widgets/login_header.dart';
import 'package:stuntsync/features/authentication/screens/login/widgets/social_buttons.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: SSSpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                const SSLoginHeader(),
                const SSLoginForm(),
                SSFormDivider(dividerText: SSText.orSignInWith.capitalize!),
                const SizedBox(height: SSSizes.spaceBtwItems),
                const SSSocialButtons()
              ],
            ),
          ),
        ));
  }
}