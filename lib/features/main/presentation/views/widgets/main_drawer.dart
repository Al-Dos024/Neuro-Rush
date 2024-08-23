import 'package:adhd/features/main/presentation/views/about_us.dart';
import 'package:adhd/features/main/presentation/views/previous_results.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_drawer_header.dart';
import 'package:adhd/features/main/presentation/views/widgets/drawer_item.dart';
import 'package:adhd/features/main/presentation/views/widgets/logout_dialog.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: S.of(context).Previous_Results,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PreviousResults(),
                  ));
            },
          ),
          Row(
            children: [
              DrawerItem(
                img: "assets/icons/dark_mode.png",
                title: S.of(context).Dark_Mode,
              ),
              IconButton(
                onPressed: () {
                  MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;
                },
                icon: Icon(
                  MyApp.themeNotifier.value == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                      color: kBlackcolor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              DrawerItem(
                img: "assets/icons/language.png",
                title: S.of(context).Language,
              ),
              ValueListenableBuilder(
                valueListenable: MyApp.localeNotifier,
                builder: (_, Locale currentLocale, __) {
                  String language =
                      currentLocale.languageCode == 'ar' ? 'en' : 'ar';
                  String buttonText =
                      currentLocale.languageCode == 'ar' ? 'en' : 'ar';

                  return ElevatedButton(
                    onPressed: () {
                      changeLanguage(Locale(language));
                    },
                    child: Text(buttonText),
                  );
                },
              ),
            ],
          ),
          DrawerItem(
            img: "assets/icons/about_us.png",
            title: S.of(context).About_Us,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ));
            },
          ),
          const Spacer(),
          const Divider(
            indent: 30,
            endIndent: 30,
            color: kBluecolor_1,
          ),
          DrawerItem(
            img: "assets/icons/logout.png",
            title: S.of(context).Log_Out,
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
