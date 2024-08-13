import 'package:adhd/core/utils/assets.dart';
import 'package:adhd/features/authorization/presentation/sign_in/screens/sign_in_view.dart';
import 'package:adhd/features/main/screens/main_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'sliding_text.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/ADHDGif.gif"/*AssetsData.logo*/),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     // calculations
        //     transition: Transition.fade,
        //     duration: kTranstionDuration);

        // GoRouter.of(context).push(AppRouter.kHomeView);
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user != null) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MainView()));
          }
        });
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SigninView()));
      },
    );
  }
}
