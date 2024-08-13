import 'package:adhd/constants.dart';
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
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset('assets/videos/What_is_ADHD.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
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
                icon: Icon(controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow)),
            IconButton(
                onPressed: () {
                  controller.seekTo(const Duration(seconds: 0));

                  setState(() {});
                },
                icon: const Icon(Icons.stop))
          ],
        ),
        Text(
          "Video explaining attention deficit ",
          style: GoogleFonts.kodchasan(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "hyperactivity disorder",
          style: GoogleFonts.kodchasan(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
