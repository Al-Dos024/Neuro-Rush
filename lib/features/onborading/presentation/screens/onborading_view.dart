import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninView()));
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
        ],
      ),
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
                  urlImage: 'assets/images/World health day.png',
                  title: "About Our Application",
                  subtitle:
                      "It is an application designed to empower individuals and families affected by ADHD, as it combines three main functions: first, diagnosing ADHD. Second, resources on ADHD Topics such as symptoms, types, management strategies, and coping mechanisms can help users better understand themselves and their experiences."),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/images/Online Doctor.png',
                  title: "What does the app do?",
                  subtitle:
                      "Third, behavioral therapy tools: The app provides access to evidence-based exercises and techniques to help users manage symptoms, develop life skills, and stimulate and promote positive behaviors"),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/images/Doctor.png',
                  title: "Do we start?",
                  subtitle: " "),
            ]),
      ),
      bottomSheet: isLastpage
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 110,
              color: Colors.white,
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
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimerycolor,
                    ),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninView()));
                    },
                    child: const Text(
                      "Let’s Start!",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 110,
              color: Colors.white,
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
                  IconButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimerycolor,
                    ),
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    icon: const Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.white,
                      size: 47,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
