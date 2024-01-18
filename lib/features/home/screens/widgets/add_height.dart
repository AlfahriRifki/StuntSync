import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddHeightScreen extends StatelessWidget {
  const AddHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SSAppBar(
        showBackArrow: true,
        title: Text('Add New Height'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.add_circle),
                    hintText: 'Input Height',
                  ),
                ),
                const SizedBox(height: SSSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}