
import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.img, required this.title, this.onTap});
  final String img;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image(
                image: AssetImage(img),
                height: 16,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.kodchasan(
                fontSize:13 ,
                fontWeight: FontWeight.w500,
                color: kBluecolor_1
              ),
            ),
          ],
        ),
      ),
    );
  }
}
