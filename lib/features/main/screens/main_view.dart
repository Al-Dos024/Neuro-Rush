import 'package:adhd/features/main/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:adhd/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        endDrawer: MainDrawer(),
        body: Column(
          children: [CustomAppBar()],
        ));
  }
}

class MainViewContent extends StatelessWidget {
  const MainViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Main View Content',
      style: TextStyle(fontSize: 24),
    );
  }
}

class CustomLeading extends StatelessWidget {
  const CustomLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/img/avatar.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome aboard,",
                    style: GoogleFonts.jura(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kWhitecolor,
                    ),
                  ),
                  Text(
                    "Scarlett Johansson",
                    style: GoogleFonts.inter(
                      color: kWhitecolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: kWhitecolor,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      color: kBluecolor_1,
      child: const CustomLeading(),
    );
  }
}
