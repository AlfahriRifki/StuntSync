import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SSSizes.defaultSpace),
        child: Column(
          children: [

            /// Headings
            Text(SSText.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: SSSizes.spaceBtwItems),
            Text(SSText.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: SSSizes.spaceBtwSections * 2),

            /// Input Email Field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: SSText.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: SSSizes.spaceBtwSections),

            /// Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => const ResetPassword());
                },
                child: const Text(SSText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}