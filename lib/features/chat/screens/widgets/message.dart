import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'chat_scr_state.dart';

Widget message(String urlImage, String title, String onOff, context) {
  // clickContact
  return Scaffold(
    appBar: AppBar(
      backgroundColor: SSColors.primary,
      titleSpacing: 0.0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_rounded),
      ),
      title: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: ClipOval(
              child: Image.asset(
                urlImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              const SizedBox(
                height: 2,
              ),
              Text(
                onOff,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        Icon(Icons.videocam),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.call),
        ),
        Icon(Icons.more_vert),
      ],
    ),
    body: const ChatScr(),
  );
}
