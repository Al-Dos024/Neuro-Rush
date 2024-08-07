import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/result_icon_info.dart';
import 'package:flutter/material.dart';
import '../widgets/diagnosis_rate.dart';

class Result extends StatefulWidget {
  const Result({super.key, required this.kidsList});
  final List kidsList;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBluecolor_1,
          centerTitle: true,
          toolbarHeight: 80,
          title: Text(
            "Result of Test",
            style: CustomTextStyle.kodch20WB,
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 7.0), child: ResultIconInfo()),
          ],
        ),
        body: ListView.builder(
            itemCount: allScore.length,
            itemBuilder: (context, index) {
              return DiagnosisRate(
                title: classification[index],
                subtitle: subtitleClass[index],
                score: allScore[index],
              );
            }));
  }
}
