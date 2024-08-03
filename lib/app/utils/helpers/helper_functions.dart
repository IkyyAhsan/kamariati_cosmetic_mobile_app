import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kamariati_cosmetic_project/app/modules/bottom_navigation_screen/views/bottom_navigation_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/success_screen/views/success_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';

class KamariatiHelperFunctions {
  static Color? getColor(String value) {
    /// Define your product specific colors here and it will match the attribute colors and show specific 🟠🟡🟢🔵🟣🟤

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == '01 Energy Shot'){
      return KamariatiColors.lipInkEnergyShot01;
    } else if (value == '02 Smart Cookie'){
      return KamariatiColors.lipInkSmartCookie02;
    } else if (value == '03 High Rise'){
      return KamariatiColors.lipInkHighRise03;
    } else if (value == '04 Speedster'){
      return KamariatiColors.lipInkSpeedster04;
    } else if (value == '05 Soul Mover'){
      return KamariatiColors.lipInkSoulMover05;
    } else if (value == '06 Hyped Up'){
      return KamariatiColors.lipInkHypedUp06;
    } else if (value == '07 Busy Bee'){
      return KamariatiColors.lipInkBusyBee07;
    } else if (value == '08 Go Getter'){
      return KamariatiColors.lipInkGoGetter08;
    }
    else {
      return null;
    }
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
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static showConfirmationDialog(BuildContext context) {
    Get.dialog(
      AlertDialog(
        title: Text('Konfirmasi Pembelian', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        content: Text('Apakah Anda yakin ingin membeli produk ini?', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400 )),),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Tidak', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
            )),),
          ),
          TextButton(
            onPressed: () {
              Get.back();
              Get.to(() => SuccessScreenView(
                image: KamariatiImages.successfulPaymentIcon,
                title: 'Pembayaran Berhasil!',
                subtitle: 'Pesanan anda akan segera dikirimkan',
                onPressed: () => Get.offAll(() => const BottomNavigationScreenView()),
              ));
            },
            child: Text('Ya', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
            )),),
          ),
        ],
      ),
    );
  }
}
