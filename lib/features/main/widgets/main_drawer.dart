import 'package:adhd/features/main/widgets/custom_drawer_header.dart';
import 'package:adhd/features/main/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

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
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          CustomDrawerHeader(),
          DrawerItem(img: "assets/icons/home.png", title: 'Home'),
          DrawerItem(img: "assets/icons/profile.png", title: "My Profile"),
          DrawerItem(img: "assets/icons/setting.png", title: "Settigs"),
          SizedBox(
            height: 380,
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            color: kBluecolor_1,
          ),
          DrawerItem(img: "assets/icons/logout.png", title: "Log Out"),
        ],
      ),
    );
  }
}
