import 'package:flutter/material.dart';

import 'message.dart';

Widget contact(
    String urlImage, String title, var time, onOff, String msgs, context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => message(urlImage, title, onOff, context)),
        );
      },
      leading: SizedBox(
        height: 50,
        width: 50,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const Icon(
            Icons.done_all,
            size: 20,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            msgs,
          ),
        ],
      ),
      trailing: Text(time),
    ),
  );
}