import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SSHelper {
  static Color? getColor(String value) {
    switch (value) {
      case 'Green':
        return Colors.green;
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Pink':
        return Colors.pink;
      case 'Grey':
        return Colors.grey;
      case 'Purple':
        return Colors.purple;
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      case 'Yellow':
        return Colors.yellow;
      case 'Orange':
        return Colors.deepOrange;
      case 'Brown':
        return Colors.brown;
      case 'Teal':
        return Colors.teal;
      case 'Indigo':
        return Colors.indigo;
    }
    return null;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return screenSize().height;
  }

  static double screenWidth() {
    return screenSize().width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final end = i + rowSize > widgets.length ? widgets.length : i + rowSize;
      wrappedList.add(Row(children: widgets.sublist(i, end)));
    }
    return wrappedList;
  }
}
