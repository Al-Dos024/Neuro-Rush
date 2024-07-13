import 'package:adhd/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/buildpage.dart';

class OnBoradingView extends StatefulWidget {
  const OnBoradingView({super.key});

  @override
  State<OnBoradingView> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBoradingView> {
  final controller = PageController();
  bool isLastpage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastpage = index == 2);
            },
            children: [
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/img/kid.png',
                  title: "About Our Application",
                  subtitle:
                      "It is an application designed to empower individuals and families affected by ADHD, as it combines three main functions: first, diagnosing ADHD. Second, resources on ADHD Topics such as symptoms, types, management strategies, and coping mechanisms can help users better understand themselves and their experiences."),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/img/fix.png',
                  title: "What does the app do?",
                  subtitle:
                      "Third, behavioral therapy tools: The app provides access to evidence-based exercises and techniques to help users manage symptoms, develop life skills, and stimulate and promote positive behaviors"),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/img/adhdlastpic.jpg',
                  title: "Do we start?",
                  subtitle: " "),
            ]),
      ),
      bottomSheet: isLastpage
          ? TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1)),
                backgroundColor: Colors.teal.shade700,
                minimumSize: const Size.fromHeight(80),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                          spacing: 10,
                          dotColor: Colors.black12,
                          activeDotColor: kPrimerycolor),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn),
                    ),
                  ),
                  TextButton(
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
