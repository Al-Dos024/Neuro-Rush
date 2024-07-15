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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("info about the kid"),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
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
                        Image(
                          image: AssetImage("assets/icons/male.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
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
                        Image(
                          image: AssetImage("assets/icons/female.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        ////////////////////////////////////////////////////////////
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
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
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "btn1",
                              backgroundColor: kPrimerycolor,
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
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: "btn2",
                              backgroundColor: kPrimerycolor,
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
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(bottom: 20.0, left: 12, right: 12, top: 12),
          child: CustomButton(
            text: 'Go to Phase Two',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizForKids(
                            isMale: isMale,
                            age: age,
                          )));
            },
          ),
        ),
      ]),
    );
  }
}
