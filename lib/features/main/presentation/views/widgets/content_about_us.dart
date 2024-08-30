import 'package:adhd/constants.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_title_subtitle.dart';
import 'package:adhd/features/main/presentation/views/widgets/image_section_about_us.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContentAboutUs extends StatelessWidget {
  const ContentAboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kBluecolor_4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          children: [
            CustomTitleSubTitle(
                title: S.of(context).Our_Mission,
                subTitle: S.of(context).Our_Mission_sub),
            const SizedBox(
              height: 20,
            ),
            const ImageSectionAboutUs(),
            CustomTitleSubTitle(
                title: S.of(context).What_We_Offer,
                subTitle: S.of(context).What_We_Offer_sub),
            const SizedBox(
              height: 20,
            ),
            CustomTitleSubTitle(
                title: S.of(context).Why_We_Developed_This_App,
                subTitle: S.of(context).Why_We_Developed_This_App_sub),
            const SizedBox(
              height: 20,
            ),
            CustomTitleSubTitle(
                title: S.of(context).Future_Vision,
                subTitle: S.of(context).Future_Vision_sub),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
