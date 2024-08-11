import 'package:adhd/constants.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/Icon_with_lable_button.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/details_text_14.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/subtitle_18.dart';
import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/title_gender_22.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefineTheKid extends StatefulWidget {
  const DefineTheKid({super.key});

  @override
  State<DefineTheKid> createState() => _DefineTheKidState();
}

class _DefineTheKidState extends State<DefineTheKid> {
  int age = 12;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitecolor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleGender22(text: 'Please fill the information '),
            const DetailsText14(
                text: 'this will help us increase the accuracy of the result'),
            const Subtitle18(text: 'Choose your kid gender :'),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: kMalecolor.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: isMale
                            ? kMalecolor.withOpacity(0.5)
                            : kWhitecolor_1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Boy',
                            style: GoogleFonts.kodchasan(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage("assets/images/male.png"),
                            height: 125,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: kFemalecolor.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: isMale
                            ? kWhitecolor_1
                            : kFemalecolor.withOpacity(0.5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Girl',
                            style: GoogleFonts.kodchasan(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage("assets/images/female.png"),
                            height: 125,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ////////////////////////////////////////////////////////////

            const Subtitle18(text: 'Choose your kid age:'),

            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            FloatingActionButton(
                              shape: const CircleBorder(),
                              heroTag: "btn1",
                              backgroundColor: kGraycolor_2,
                              onPressed: () {
                                setState(() {
                                  if (age < 17) {
                                    age++;
                                  }
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                color: kPrimerycolor.withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kBluecolor_2,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$age',
                                      style: GoogleFonts.kodchasan(
                                          fontSize: 32, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            FloatingActionButton(
                              shape: const CircleBorder(),
                              heroTag: "btn2",
                              backgroundColor: kGraycolor_2,
                              onPressed: () {
                                setState(() {
                                  if (age > 3) {
                                    age--;
                                  }
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            const Spacer(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            IconWithLableButton(
              age: age,
              isMale: isMale,
            ),
          ],
        ),
      ),
    );
  }
}
