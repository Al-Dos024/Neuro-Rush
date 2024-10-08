import 'package:adhd/constants.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class AdhdVideoSection extends StatefulWidget {
  const AdhdVideoSection({super.key});

  @override
  State<AdhdVideoSection> createState() => _AdhdVideoSectionState();
}

class _AdhdVideoSectionState extends State<AdhdVideoSection> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    loadVideoPlayer();
  }

  void loadVideoPlayer() {
    controller = VideoPlayerController.asset('assets/videos/What_is_ADHD.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
        VideoProgressIndicator(controller,
            allowScrubbing: true,
            colors: const VideoProgressColors(
              backgroundColor: kBluecolor_3,
              playedColor: kBluecolor_2,
              bufferedColor: kBluecolor_3,
            )),
        Row(
          children: [
            IconButton(
              onPressed: () {
                if (controller.value.isPlaying) {
                  controller.pause();
                } else {
                  controller.play();
                }

                setState(() {});
              },
              icon: Icon(
                controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                color: kBluecolor_1,
              ),
            ),
            IconButton(
              onPressed: () {
                controller.seekTo(const Duration(seconds: 0));

                setState(() {});
              },
              icon: const Icon(
                Icons.replay,
                color: kBluecolor_1,
              ),
            )
          ],
        ),
        Text(
          S.of(context).video_desc,
          style: GoogleFonts.kodchasan(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
          ),
        ),
        Text(
          S.of(context).video_und,
          style: GoogleFonts.kodchasan(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: isDarkMode ? kBluecolor_7 : kBluecolor_4,
          ),
        ),
      ],
    );
  }
}
