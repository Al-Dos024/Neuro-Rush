import 'package:adhd/constants.dart';
import 'package:adhd/features/main/widgets/custom_app_bar.dart';
import 'package:adhd/features/main/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: MainDrawer(),
      body: Column(
        children: [CustomAppBar(), MainViewContent()],
      ),
    );
  }
}

class MainViewContent extends StatelessWidget {
  const MainViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCardMainView(
          color: kWhatAdhdcolor,
          imgCard: "assets/img/more_adhd.png",
          imgIcon: "assets/icons/video.png",
          subtitle: "What is",
          title: "ADHD?",
        ),
         CustomCardMainView(
          color: kWhatAdhdcolor,
          imgCard: "assets/img/more_adhd.png",
          imgIcon: "assets/icons/video.png",
          subtitle: "What is",
          title: "ADHD?",
        ),
         CustomCardMainView(
          color: kWhatAdhdcolor,
          imgCard: "assets/img/more_adhd.png",
          imgIcon: "assets/icons/video.png",
          subtitle: "What is",
          title: "ADHD?",
        ),
      ],
    );
  }
}

class CustomCardMainView extends StatelessWidget {
  const CustomCardMainView({
    super.key,
    this.color,
    required this.title,
    required this.subtitle,
    required this.imgCard,
    required this.imgIcon,
  });
  final Color? color;
  final String title;
  final String subtitle;
  final String imgCard;
  final String imgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 230,
        child: Row(
          children: [
           Image(
              image: AssetImage(imgCard),
              height: 180,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.kodchasan(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kWhitecolor,
                  ),
                ),
                Image.asset(
                  imgIcon,
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
