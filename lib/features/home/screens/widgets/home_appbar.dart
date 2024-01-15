// import 'package:flutter/material.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/text_strings.dart';
//
//
// class SSHomeAppBar extends StatelessWidget {
//   const SSHomeAppBar({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SSAppBar(
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(SSText.homeAppbarTitle,
//               style: Theme.of(context)
//                   .textTheme
//                   .labelMedium!
//                   .apply(color: SSColors.white)),
//           Text(SSText.homeAppbarSubTitle,
//               style: Theme.of(context)
//                   .textTheme
//                   .headlineSmall!
//                   .apply(color: SSColors.white)),
//         ],
//       ),
//       actions: [
//         ICartCounterIcon(
//           onPressed: () {},
//           iconColor: SSColors.white,
//         )
//       ],
//     );
//   }
// }