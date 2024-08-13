
import 'package:adhd/constants.dart';
import 'package:adhd/core/helper/log_out.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhitecolor,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Are you sure you want to log out this account ?",
              maxLines: 2,
              style: GoogleFonts.kodchasan(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    logOut(context);
                  },
                  child: Text(
                    "Yes",
                    style: GoogleFonts.kodchasan(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "No",
                    style: GoogleFonts.kodchasan(
                      color: kBluecolor_3,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
