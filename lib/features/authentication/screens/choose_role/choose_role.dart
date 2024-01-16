import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/signup/signup_healthcare.dart';
import 'package:stuntsync/features/authentication/screens/signup/signup_parent.dart';
import 'package:stuntsync/utils/constants/colors.dart';
import 'package:stuntsync/utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SSChooseRole extends StatelessWidget {
  const SSChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(SSSizes.defaultSpace),
            child: Column(children: [
              const SizedBox(height: SSSizes.spaceBtwSections * 3),

              /// Title
              Text(SSText.chooseRoleTitle,
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Form
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAll(const SignupPageParent());
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              SSImages.parentImage,
                            ),
                            const Text(SSText.parent),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: SSSizes.spaceBtwInputFields),
                  Expanded(
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAll(const SignupPageHealthcare());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: SSColors.secondary,
                          side: const BorderSide(color: SSColors.secondary),
                          foregroundColor: SSColors.primaryBackground,
                        ),
                        child: Column(
                          children: [
                            Image.asset(SSImages.healthCareImage),
                            const Text(SSText.healthcareStaff),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
