
import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.img,
    required this.title,
    this.onTap
  });
  final String img;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Image(
          image: AssetImage(img),
          height: 20,
        ),
        title: Text(
          title,
          style: GoogleFonts.kodchasan(
            color: kBluecolor_1,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
