import 'package:adhd/constants.dart';
import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/generated/l10n.dart';
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
                child: Text(
                  S.of(context).Skip_btn,
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
                  title: S.of(context).aboutapp,
                  subtitle: S.of(context).aboutapp_desc),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/images/Online Doctor.png',
                  title: S.of(context).Whatappdo,
                  subtitle: S.of(context).Whatappdo_desc),
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/images/Doctor.png',
                  title: S.of(context).letsstart,
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
                    child: Text(
                      S.of(context).Lets_start_btn,
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
