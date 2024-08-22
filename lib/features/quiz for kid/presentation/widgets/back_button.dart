import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../main.dart';

class GetBackButton extends StatelessWidget {
  const GetBackButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
       bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Align(
      alignment: Alignment.topLeft,
      child: TextButton.icon(
          label: Text(
            S.of(context).back,
            style: GoogleFonts.kodchasan(
              fontSize: 16,
              color:  isDarkMode ?kWhitecolor : kBlackcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconAlignment: IconAlignment.start,
          icon: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(25),
            ),
            child:  CircleAvatar(
              backgroundColor:isDarkMode ? const Color(0xff4E5254) : const Color(0xffE8E8F6),
              child:  Icon(
                fill: BorderSide.strokeAlignCenter,
                Icons.arrow_back,
                color: isDarkMode ? kWhitecolor:kBlackcolor,
                size: 27,
              ),
            ),
          ),
          onPressed: onPressed),
    );
  }
}
