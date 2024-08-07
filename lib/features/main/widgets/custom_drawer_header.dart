
import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230, 
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: kBluecolor_1,
        ),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/img/avatar.png"),
                ),
              ),
              Text(
                "Scarlett Johansson",
                style: GoogleFonts.inter(
                  color: kWhitecolor,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              Text(
                "Scarlett1244@gmail.com",
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                  color: kWhitecolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
