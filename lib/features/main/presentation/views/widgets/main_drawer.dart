import 'package:adhd/features/main/presentation/views/about_us.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_drawer_header.dart';
import 'package:adhd/features/main/presentation/views/widgets/drawer_item.dart';
import 'package:adhd/features/main/presentation/views/widgets/logout_dialog.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../constants.dart';
import '../previous_results_child.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

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
              ToggleSwitch(
                minWidth: 30,
                minHeight: 20,
                cornerRadius: 25,
                radiusStyle: true,
                activeFgColor: kWhitecolor,
                inactiveBgColor: Colors.grey[400],
                inactiveFgColor: kBlackcolor_1,
                icons: const [
                  Icons.dark_mode,
                  Icons.light_mode,
                ],
                iconSize: 18,
                activeBgColors: const [
                  [kBluecolor_4, kBluecolor_4],
                  [kBluecolor_1, kBluecolor_1]
                ],
                initialLabelIndex: isDarkMode ? 0 : 1,
                onToggle: (index) {
                  MyApp.themeNotifier.value =
                      index == 1 ? ThemeMode.light : ThemeMode.dark;
                },
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
                  return ToggleSwitch(
                    minWidth: 30,
                    minHeight: 20,
                    cornerRadius: 25,
                    activeBgColors: const [
                      [kBluecolor_4, kBluecolor_4],
                      [kBluecolor_4, kBluecolor_4],
                    ],
                    radiusStyle: true,
                    activeFgColor: kWhitecolor,
                    inactiveBgColor: Colors.grey[400],
                    inactiveFgColor: kWhitecolor,
                    initialLabelIndex:
                        currentLocale.languageCode == 'en' ? 0 : 1,
                    totalSwitches: 2,
                    labels: const ['EN', 'AR'],
                    fontSize: 7,
                    onToggle: (index) {
                      if (index == 0) {
                        MyApp.localeNotifier.value = const Locale('en');
                      } else {
                        MyApp.localeNotifier.value = const Locale('ar');
                      }
                    },
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
              /**
               * mIconButton(
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
               */
              /*
              ElevatedButton(
                    onPressed: () {
                      changeLanguage(Locale(language));
                    },
                    child: Text(buttonText),
                  );
                  */