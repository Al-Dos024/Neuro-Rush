import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetNextButton extends StatelessWidget {
  const GetNextButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Align(
      alignment: Alignment.topRight,
      child: TextButton.icon(
        // style: TextButton.styleFrom(
        //   backgroundColor: kBluecolor_1,
        // ),
        label: Text(
          S.of(context).next,
          style: GoogleFonts.kodchasan(
            fontSize: 16,
            color: isDarkMode ? kWhitecolor : kBlackcolor,
            fontWeight: FontWeight.w700,
          ),
        ),
        iconAlignment: IconAlignment.end,
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
          child: CircleAvatar(
            backgroundColor: isDarkMode ? const Color(0xff4E5254) : const Color(0xffE8E8F6),
            child: Icon(
              fill: BorderSide.strokeAlignCenter,
              Icons.arrow_forward,
              color:isDarkMode ? kWhitecolor :kBlackcolor,
              size: 27,
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
