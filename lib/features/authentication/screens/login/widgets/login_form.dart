import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:iconsax/iconsax.dart';

import '../../../../../bottom_navigation.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class SSLoginForm extends StatelessWidget {
  const SSLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

    return Form(
        child: Padding(
      padding: const EdgeInsets.only(top: SSSizes.spaceBtwSections),
      child: Column(
        children: [

          /// E-mail
          TextFormField(decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right, color: dark ? Colors.white70 : Colors.grey),
            hintText: SSText.email,
          )),
          const SizedBox(height: SSSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
              decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check, color: dark ? Colors.white70 : Colors.grey),
            hintText: SSText.password,
            suffixIcon: Icon(Iconsax.eye_slash, color: dark ? Colors.white70 : Colors.grey),
          )),

          const SizedBox(height: SSSizes.spaceBtwInputFields / 2),

          /// Remember me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(SSText.rememberMe),
                ],
              ),

              /// Forget Password
              TextButton(
                  style: TextButton.styleFrom(foregroundColor: dark ? Colors.white70 : Colors.grey),
                  onPressed: () {
                    Get.to(() => const ForgetPassword());
                  },
                  child: const Text(SSText.forgetPassword)),
            ],
          ),

          const SizedBox(height: SSSizes.spaceBtwSections),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const BottomNavigation());
                },
                child: const Text(SSText.signIn)),
          ),

          const SizedBox(height: SSSizes.spaceBtwItems),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupPage());
                },
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: SSColors.buttonPrimary)),
                child: const Text(SSText.createAccount)),
          ),

          const SizedBox(height: SSSizes.spaceBtwSections),
        ],
      ),
    ));
  }
}
