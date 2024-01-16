import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stuntsync/features/personalization/screens/address/widget/single_address.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';


class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: SSColors.primary,
        child: const Icon(
          Iconsax.add,
          color: SSColors.white,
        ),
      ),
      appBar: SSAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSSizes.defaultSpace),
          child: Column(
            children: [
              SSSingleAddress(selectedAddress: true),
              SSSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}