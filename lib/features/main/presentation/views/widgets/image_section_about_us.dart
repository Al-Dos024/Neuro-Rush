
import 'package:adhd/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageSectionAboutUs extends StatelessWidget {
  const ImageSectionAboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsData.imageKids,
          height: 112,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Image.asset(
              AssetsData.imageHands,
              height: 81,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              AssetsData.imageHands,
              height: 81,
            )
          ],
        ),
      ],
    );
  }
}
