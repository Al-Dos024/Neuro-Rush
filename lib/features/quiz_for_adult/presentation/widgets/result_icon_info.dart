import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'detail_row.dart';

class ResultIconInfoAdult extends StatelessWidget {
  const ResultIconInfoAdult({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return AlertDialog(
      backgroundColor: isDarkMode ? kBlackcolor_2 : kWhitecolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        S.of(context).More_Details,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isDarkMode ? kWhitecolor : kBlackcolor_2,
        ),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            detailRow(const Color(0xff238800), S.of(context).Low),
            detailRow(const Color(0xffFF8A8A), S.of(context).Medium),
            detailRow(const Color(0xffBA0F13), S.of(context).high),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).ok,
            style: const TextStyle(
              color: Colors.lightBlue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
