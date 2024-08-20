import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/main/widgets/result_firebase.dart';
import 'package:adhd/features/main/widgets/two_row_text.dart';
import 'package:adhd/generated/l10n.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBluecolor_5,
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
                        color: kBluecolor_4,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Image.asset(
                      AssetsData.prvtest,
                      height: 180,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () async {
                      // Fetch data using the index and userId
                      final data = await fetchData(index, userId);

                      // Log the fetched data for debugging purposes
                      print("Fetched Data: $data");

                      // Navigate to the ResultFirebase screen
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
                      backgroundColor: kWhitecolor,
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
      // Reference to the specific test data
      final DatabaseReference ref = FirebaseDatabase.instance
          .ref("users")
          .child(id)
          .child("Tests")
          .child(index);

      // Fetch the data from Firebase
      final snapshot = await ref.once();

      // Check if the snapshot contains data
      if (snapshot.snapshot.value == null) {
        return []; // Return an empty list if no data is found
      }

      // Assume the snapshot contains a map
      final data = snapshot.snapshot.value as Map<dynamic, dynamic>;

      // Convert the map's values to a list and filter out non-int items
      return data.values
          .where((value) => value is int) // Ensure only integers are included
          .cast<int>() // Cast the values to integers
          .toList();
    } catch (e) {
      print("Error fetching data: $e");
      return []; // Return an empty list in case of error
    }
  }
}
