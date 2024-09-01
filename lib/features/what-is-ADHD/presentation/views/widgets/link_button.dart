
import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/views/widgets/my_text_button.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.urlLabel, required this.url})
      : super(key: key);

  final String urlLabel;
  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return MyTextButton(
      onPressed: () {
        _launchUrl(url);
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              maxLines: 2,
              urlLabel,
              style: GoogleFonts.kodchasan(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
