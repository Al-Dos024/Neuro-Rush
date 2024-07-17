import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kid.dart';

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
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Please fill the information ',
                style: GoogleFonts.kodchasan(
                  fontSize: 22,
                  color: kBluecolor_1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'this will help us increase the accuracy of the result',
                style: GoogleFonts.kodchasan(
                  fontSize: 14,
                  color: kGraycolor_1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Choose your kid gender :',
                style: GoogleFonts.kodchasan(
                  fontSize: 16,
                  color: kPrimerycolor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
                            image: AssetImage("assets/icons/male.png"),
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
                            image: AssetImage("assets/icons/female.png"),
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

            const SizedBox(
              height: 28,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Choose your kid age:',
                style: GoogleFonts.kodchasan(
                    fontSize: 18,
                    color: kPrimerycolor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
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
                                    ) // inner content
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
            Align(
              alignment: Alignment.topRight,
              child: IconWithLableButton(
                age: age,
                isMale: isMale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconWithLableButton extends StatelessWidget {
  const IconWithLableButton(
      {super.key, required this.isMale, required this.age});
  final bool isMale;
  final int age;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: kBluecolor_1,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizForKids(
              isMale: isMale,
              age: age,
            ),
          ),
        );
      },
      label: Text(
        "Go to quiz phase",
        style: GoogleFonts.kodchasan(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      iconAlignment: IconAlignment.end,
      icon: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 14,
      ),
    );
  }
}
