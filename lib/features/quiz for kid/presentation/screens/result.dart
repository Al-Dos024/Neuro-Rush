import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/data/model/nested_list.dart';
import 'package:flutter/material.dart';
import '../widgets/detail_row.dart';
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 7.0),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: const Text(
                            'more details',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                detailRow(const Color(0xff238800),
                                    'Very much below average'),
                                detailRow(const Color(0xff49E718),
                                    'Significantly below average'),
                                detailRow(
                                    const Color(0xff76E159), 'Below average'),
                                detailRow(const Color(0xffDDBD9B), 'Medium'),
                                detailRow(
                                    const Color(0xffFF8A8A), 'Above average'),
                                detailRow(const Color(0xffF34C4B),
                                    'Significantly above average'),
                                detailRow(const Color(0xffBA0F13),
                                    'Very much above average'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.info_outline,
                    size: 35,
                    color: Colors.white,
                  )),
            ),
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
