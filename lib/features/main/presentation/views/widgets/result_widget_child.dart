import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/main/presentation/views/widgets/result_firebase_child.dart';
import 'package:adhd/features/main/presentation/views/widgets/two_row_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:adhd/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
    required this.attemptNum,
    required this.age,
    required this.testTime,
    required this.testDate,
    required this.average,
    required this.gender,
    required this.index,
    required this.userId, // Add userId to fetch the correct data
  });

  final int attemptNum;
  final int age;
  final int average;
  final String gender;
  final String testTime;
  final String testDate;
  final String index;
  final String userId; // Add userId parameter

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDarkMode ? kBluecolor_8 : kBluecolor_5,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 21),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${S.of(context).Attempt_Number} ${attemptNum + 1}",
                      style: GoogleFonts.kodchasan(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: isDarkMode ? kBlackcolor_1 : kBluecolor_4,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TwoRowText(
                      name: S.of(context).Average,
                      value: "$average",
                    ),
                    const SizedBox(height: 3),
                    TwoRowText(
                      name: S.of(context).Gender_Age,
                      value: "$gender $age",
                    ),
                    const SizedBox(height: 3),
                    TwoRowText(
                      name: S.of(context).Test_Time,
                      value: testTime,
                    ),
                    const SizedBox(height: 3),
                    TwoRowText(
                      name: S.of(context).Date,
                      value: testDate,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    AssetsData.prvtest,
                    width: MediaQuery.of(context).size.width *0.24,
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () async {
                      final data = await fetchData(index, userId);
                      // print("Fetched Data: $data");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultFire(kidsList: data),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor:
                          isDarkMode ? kBlackcolor_1 : kWhitecolor_1,
                    ),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kBluecolor_1,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<int>> fetchData(String index, String id) async {
    try {
      print("Fetched index: $index , Fetched id: $id");
      final Query ref = FirebaseDatabase.instance
          .ref("users")
          .child(id)
          .child("Tests")
          .child("child")
          .child(index)
          .child("Data")
          .orderByValue();

      final snapshot = await ref.once();
      if (snapshot.snapshot.value == null) {
        return [];
      }

      final data = snapshot.snapshot.value as Map<dynamic, dynamic>;
      print(data);
      return data.values.whereType<int>().cast<int>().toList();
    } catch (e) {
      print("Error fetching data: $e");
      return [];
    }
  }
}
