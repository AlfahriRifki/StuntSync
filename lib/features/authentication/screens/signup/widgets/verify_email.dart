import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper.dart';
import '../../login/login.dart';
import '../success_screen.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Get.offAll(const LoginPage());
            },
            icon: const Icon(CupertinoIcons.clear)
        ),
      ]),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(SSSizes.defaultSpace),
            child: Column(children: [

              /// Image
              Image(
                image: const AssetImage(SSImages.deliveredEmailIllustration),
                width: SSHelper.screenWidth() * 0.8,
              ),
              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Text Headline
              Text(
                SSText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSSizes.spaceBtwItems),

              ///
              Text('support@isu.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSSizes.spaceBtwItems),

              /// Text details
              Text(
                SSText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSSizes.spaceBtwSections),

              /// Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(SSSuccessScreen(
                      image: SSImages.accountSuccessIllustration,
                      title: SSText.yourAccountCreatedTitle,
                      subTitle: SSText.yourAccountCreatedSubTitle,
                      onPressed: () => Get.offAll(const LoginPage()),
                    ));
                  },
                  child: const Text(SSText.tContinue),
                ),
              ),
              const SizedBox(height: SSSizes.spaceBtwItems),

              /// Resend Email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(SSText.resendEmail),
                ),
              )
            ]),
          )),
    );
  }
}