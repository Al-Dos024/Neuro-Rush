import 'package:flutter/material.dart';
import 'package:adhd/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart'; // Make sure this import path is correct

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MainDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kWhitecolor),
        backgroundColor: kBluecolor_1,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Main View Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

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
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          CustomDrawerHeader(),
          DrawerItem(img: "assets/icons/home.png",title: 'Home'),
          DrawerItem(img: "assets/icons/profile.png", title: "My Profile"),
          DrawerItem(img: "assets/icons/setting.png", title: "Settigs"),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.img,
    required this.title,
  });
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0, 
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
