import 'package:adhd/features/main/screens/about_us.dart';
import 'package:adhd/features/main/screens/previous_results.dart';
import 'package:adhd/features/main/widgets/custom_drawer_header.dart';
import 'package:adhd/features/main/widgets/drawer_item.dart';
import 'package:adhd/helper/log_out.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhitecolor,
      width: 230,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
      child: Column(
        children: [
          const CustomDrawerHeader(),
          DrawerItem(
            img: "assets/icons/re.png",
            title: 'Previous Results',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PreviousResults(),
                  ));
            },
          ),
          const DrawerItem(
            img: "assets/icons/dark_mode.png",
            title: "Dark Mode",
          ),
          DrawerItem(
            img: "assets/icons/about_us.png",
            title: "About Us",
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ));
            },
          ),
          const DrawerItem(
            img: "assets/icons/language.png",
            title: "Language",
          ),
          const Spacer(),
          const Divider(
            indent: 30,
            endIndent: 30,
            color: kBluecolor_1,
          ),
          DrawerItem(
            img: "assets/icons/logout.png",
            title: "Log Out",
            onTap: () {
              Navigator.of(context).pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return const LogOutDialog();
                  });
            },
          ),
        ],
      ),
    );
  }
}

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
