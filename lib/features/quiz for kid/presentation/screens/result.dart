import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/detail_row.dart';
import '../widgets/diagnosis_rate.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                            children: <Widget>[
                              detailRow(Colors.green[900]!,
                                  'Very much below average'),
                              detailRow(Colors.green[700]!,
                                  'Significantly below average'),
                              detailRow(Colors.green[500]!, 'Below average'),
                              detailRow(
                                  Colors.green[300]!, 'Slightly below average'),
                              detailRow(Colors.yellow[300]!, 'Medium'),
                              detailRow(
                                  Colors.pink[100]!, 'Slightly above average'),
                              detailRow(Colors.pink[300]!, 'Above average'),
                              detailRow(Colors.red[400]!,
                                  'Significantly above average'),
                              detailRow(
                                  Colors.red[800]!, 'Very much above average'),
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
      body: const Column(
        children: [
          DiagnosisRate(),
          DiagnosisRate(),
          DiagnosisRate(),
        ],
      ),
    );
  }
}
