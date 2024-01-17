import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SSSignupFormHealthcare extends StatelessWidget {
  const SSSignupFormHealthcare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SSHelper.isDarkMode(context);

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

        /// Choose your healthcare institution
        Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: dark ? SSColors.white : SSColors.primaryBackground,
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                iconEnabledColor: dark ? SSColors.grey : SSColors.white,
                items: [
                  "RSUP Dr Sardjito",
                  "Puskesmas Sinduadi",
                  "RS Dr Soetarto","RSUD Kota Yogyakarta",
                  "RS Bethesda Lempuyangwangi",
                  "RS Bethesda Yogyakarta",
                  "RS Dr. Soetarto",
                  "RS Dr. Yap Yogyakarta",
                  "RS Happy Land",
                  "RS Islam Hidayatullah",
                  "RS Ludira Husada Tama",
                  "RS Muhammadiyah Yogyakarta",
                  "RS Panti Rapih",
                  "RS Pratama Yogyakarta",
                  "RS Prof. R. Oepomo",
                  "RS Puri Nirmala",
                  "RS Sari Asih Yogyakarta",
                  "RS Siloam Yogyakarta",
                  "RS Soedirman",
                  "RS Universitas Muhammadiyah",
                  "RSIA Bhakti Ibu",
                  "RSIA Fajar",
                  "RSIA Muhammadiyah Kotagede",
                  "RSIA Permata Bunda",
                  "RSIA Prof. Dr. Ismangoen",
                  "RSIA Rachmi",
                  "RSUD Kota Yogyakarta",
                  "RS Bethesda Lempuyangwangi",
                  "RS Bethesda Yogyakarta",
                  "RS Dr. Soetarto",
                  "RS Dr. Yap Yogyakarta",
                  "RS Happy Land",
                  "RS Islam Hidayatullah",
                  "RS Ludira Husada Tama",
                  "RS Muhammadiyah Yogyakarta",
                  "RS Panti Rapih",
                  "RS Pratama Yogyakarta",
                  "RS Prof. R. Oepomo",
                  "RS Puri Nirmala",
                  "RS Sari Asih Yogyakarta",
                  "RS Siloam Yogyakarta",
                  "RS Soedirman",
                  "RS Universitas Muhammadiyah",
                  "RSIA Bhakti Ibu",
                  "RSIA Fajar",
                  "RSIA Muhammadiyah Kotagede",
                  "RSIA Permata Bunda",
                  "RSIA Prof. Dr. Ismangoen",
                  "RSIA Rachmi",

                ]
                    .map((name) => DropdownMenuItem(
                          value: name,
                          child: Text(
                            name,
                            style: TextStyle(
                                color: dark ? SSColors.grey : SSColors.black,
                                fontSize: 14),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {},
                hint: Text(
                  "Choose Your Healthcare Institution",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: dark ? SSColors.black : SSColors.white,
                      fontSize: 12),
                ),
              ),
            )),

        const SizedBox(height: SSSizes.spaceBtwInputFields),

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
