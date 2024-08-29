
import 'package:adhd/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomImageAboutUs extends StatelessWidget {
  const CustomImageAboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          AssetsData.imageMeeting,
          width: MediaQuery.of(context).size.width,
          height: 250,
          fit: BoxFit.fill,
        ),
        Container(
          height: 20,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: kBluecolor_4,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        )
      ],
    );
  }
}
