import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/show_snackbar.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_elevated_button%20copy.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).continue_with,
            style: GoogleFonts.inter(
              color: kGraycolor_1,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyElevatedButton(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhitecolor_1,
                  onPressed: () {
                    showSnackBar(context,
                        title: S.of(context).next_ver_title,
                        message: S.of(context).next_ver_subtitle);
                  },
                  height: 45,
                  width: 85,
                  child: Image.asset(
                    "assets/icons/google_icon.png",
                    height: 35,
                    width: 35,
                  ),
                ),
                MyElevatedButton(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhitecolor_1,
                  onPressed: () {
                    showSnackBar(context,
                        title: S.of(context).next_ver_title,
                        message: S.of(context).next_ver_subtitle);
                  },
                  height: 45,
                  width: 85,
                  child: Image.asset(
                    "assets/icons/apple_icon.png",
                    height: 35,
                    width: 35,
                  ),
                ),
                MyElevatedButton(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhitecolor_1,
                  onPressed: () {
                    showSnackBar(context,
                        title: S.of(context).next_ver_title,
                        message: S.of(context).next_ver_subtitle);
                  },
                  height: 45,
                  width: 85,
                  child: Image.asset(
                    "assets/icons/facebook_icon.png",
                    height: 40,
                    width: 40,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
