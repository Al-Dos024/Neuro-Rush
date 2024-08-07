import 'package:flutter/material.dart';
import 'detail_row.dart';

class ResultIconInfo extends StatelessWidget {
  const ResultIconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
                      detailRow(
                          const Color(0xff238800), 'Very much below average'),
                      detailRow(const Color(0xff49E718),
                          'Significantly below average'),
                      detailRow(const Color(0xff76E159), 'Below average'),
                      detailRow(const Color(0xffDDBD9B), 'Medium'),
                      detailRow(const Color(0xffFF8A8A), 'Above average'),
                      detailRow(const Color(0xffF34C4B),
                          'Significantly above average'),
                      detailRow(
                          const Color(0xffBA0F13), 'Very much above average'),
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
        ));
  }
}
