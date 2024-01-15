import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/signup/widgets/verify_email.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SSSignupForm extends StatelessWidget {
  const SSSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            /// First name & Last name
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: SSText.firstName, prefixIcon: Icon(Iconsax.user)),
                    )),
                const SizedBox(width: SSSizes.spaceBtwInputFields),
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: SSText.lastName, prefixIcon: Icon(Iconsax.user)),
                    ))
              ],
            ),
            const SizedBox(height: SSSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                  labelText: SSText.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: SSSizes.spaceBtwInputFields),

            /// E-mail
            TextFormField(
              decoration: const InputDecoration(
                  labelText: SSText.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: SSSizes.spaceBtwInputFields),

            /// Phone Number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: SSText.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: SSSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: SSText.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: SSSizes.spaceBtwInputFields),
            // const TermsAndConditionCheckbox(),
            const SizedBox(height: SSSizes.spaceBtwSections),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAll(const VerifyEmailPage());
                },
                child: const Text(SSText.createAccount),
              ),
            ),
          ],
        ));
  }
}