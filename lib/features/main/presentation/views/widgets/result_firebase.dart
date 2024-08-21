import 'package:adhd/constants.dart';
import 'package:adhd/core/utils/font_style.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/diagnosis_rate.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/result_icon_info.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:flutter/material.dart';

class ResultFire extends StatelessWidget {
  const ResultFire({super.key, required this.kidsList});

  final List<int> kidsList;

  @override
  Widget build(BuildContext context) {
    //print("Received kidsList: $kidsList");

    // Classification list (Categories)
    List<String> classification = [
      S.of(context).Opposition,
      S.of(context).Cognitive_Problems,
      S.of(context).Hyperactivity,
      S.of(context).Anxiety_and_shyness,
      S.of(context).Perfectionism,
      S.of(context).Social_problems,
      S.of(context).Psychosomatic_diseases,
      S.of(context).Attention_deficit,
      S.of(context).Arousal_and_impulsivity,
      S.of(context).Passion,
      S.of(context).General_indicator,
      S.of(context).DMS_5,
      S.of(context).Hyperactivity_DMS_5,
      S.of(context).Mixed_DMS_5,
    ];

    // Subtitle list
    List<String> subtitleClass = [
      S.of(context).Opposition_sub,
      S.of(context).Cognitive_Problems_sub,
      S.of(context).Hyperactivity_sub,
      S.of(context).Anxiety_and_shyness_sub,
      S.of(context).Perfectionism_sub,
      S.of(context).Social_problems_sub,
      S.of(context).Psychosomatic_diseases_sub,
      S.of(context).Attention_deficit_sub,
      S.of(context).Arousal_and_impulsivity_sub,
      S.of(context).Passion_sub,
      S.of(context).General_indicator_sub,
      S.of(context).DMS_5_sub,
      S.of(context).Hyperactivity_DMS_5_sub,
      S.of(context).Mixed_DMS_5_sub,
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 28,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBluecolor_1,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          S.of(context).Result_of_Test,
          style: CustomTextStyle.kodch20WB,
        ),
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
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: classification.length,
        itemBuilder: (context, index) {
          return DiagnosisRate(
            title: classification[index],
            subtitle: subtitleClass[index],
            score: index < kidsList.length ? kidsList[index] : 0,
          );
        },
      ),
    );
  }
}
