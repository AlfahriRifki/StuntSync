import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SSLoginForm extends StatelessWidget {
  const SSLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.only(top: SSSizes.spaceBtwSections),
          child: Column(
            children: [

              /// E-mail
              TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    hintText: SSText.email,
                  )),
              const SizedBox(height: SSSizes.spaceBtwInputFields),

              /// Password
              TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    hintText: SSText.password,
                    suffixIcon: Icon(Iconsax.eye_slash),
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
                      onPressed: () {
                        // Get.to(() => const ForgetPassword());
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
                      // Get.to(() => const BottomNavigation());
                    },
                    child: const Text(SSText.signIn)),
              ),
              const SizedBox(height: SSSizes.spaceBtwItems),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      // Get.to(() => const SignupPage());
                    },
                    child: const Text(SSText.createAccount)),
              ),
              const SizedBox(height: SSSizes.spaceBtwSections),
            ],
          ),
        )
    );
  }
}