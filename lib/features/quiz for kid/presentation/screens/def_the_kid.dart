import 'package:adhd/constants.dart';
import 'package:adhd/features/onborading/presentation/screens/widgets/custombutton.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Please fill the information ',
              style: TextStyle(
                fontSize: 24,
                color: kBluecolor_1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'this will help us increase the accuracy of the result',
              style: TextStyle(fontSize: 14, color: kGraycolor_1),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Choose your kid gender :',
              style: TextStyle(
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
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: isMale
                          ? Colors.blue
                          : const Color.fromARGB(255, 196, 198, 237),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Boy',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage("assets/icons/male.png"),
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
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: isMale
                          ? const Color.fromARGB(255, 196, 198, 237)
                          : Colors.pinkAccent,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Girl',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage("assets/icons/female.png"),
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
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Choose your kid age:',
              style: TextStyle(
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
                    color: const Color.fromARGB(255, 249, 252, 255),
                  ),
                  child: Column(
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
                                      style: const TextStyle(
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
            child: TextButton.icon(
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
                            )));
              },
              label: const Text(
                "Go to quiz phase",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              iconAlignment: IconAlignment.end,
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
