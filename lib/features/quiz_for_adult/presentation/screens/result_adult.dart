import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/features/main/presentation/views/main_view.dart';
import 'package:adhd/features/quiz_for_adult/presentation/widgets/result_icon_info.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../widgets/diagnosis_rate.dart';

class ResultAdult extends StatelessWidget {
  const ResultAdult({super.key, required this.adultList});
  final List adultList;

  @override
  Widget build(BuildContext context) {
    List classification = [
      S.of(context).Opposition,
      S.of(context).Cognitive_Problems,
    ];

    List subtitleClass = [
      S.of(context).Opposition_sub,
      S.of(context).Cognitive_Problems_sub,
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MainView()));
            },
            icon: const Icon(
              Icons.exit_to_app,
              size: 32,
              color: Colors.white,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: kBluecolor_1,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          S.of(context).Result_of_Test,
          style: CustomTextStyle.kodch20WB,
        ),
        // actions: const [
        //   Padding(
        //       padding: EdgeInsets.only(right: 7.0), child: ResultIconInfo()),

        // ],
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const ResultIconInfo();
                  },
                );
              },
              icon: const Icon(
                Icons.info_outline,
                size: 32,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return DiagnosisRate(
            title: classification[index],
            subtitle: subtitleClass[index],
            score: adultList[index],
          );
        },
      ),
    );
  }
}
