import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/signup/widgets/signup_form_parent.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/widgets/login_form_divider.dart';
import '../login/widgets/social_buttons.dart';

class SignupPageParent extends StatelessWidget {
  const SignupPageParent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(SSSizes.defaultSpace),
            child: Column(children: [

              /// Title
              Text(SSText.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              /// Sub-tittle
              Text(SSText.parent,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Form
              const SSSignupFormParent(),

              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Divider
              SSFormDivider(dividerText: SSText.orSignUpWith.capitalize!),
              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Social Buttons
              const SSSocialButtons(),
              // Text(
              //     "By signing up you agree to our Terms of Use and Privacy Policy",
              //     style: Theme.of(context).textTheme.bodySmall)
            ]),
          ),
        ));
  }
}
