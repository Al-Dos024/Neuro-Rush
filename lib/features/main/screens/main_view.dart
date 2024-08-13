import 'package:adhd/features/main/widgets/card_view1.dart';
import 'package:adhd/features/main/widgets/card_view2.dart';
import 'package:adhd/features/main/widgets/card_view3.dart';
import 'package:adhd/features/main/widgets/custom_app_bar.dart';
import 'package:adhd/features/main/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        endDrawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              MainViewContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainViewContent extends StatelessWidget {
  const MainViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          CustomCardMainView1(),
          SizedBox(
            height: 10,
          ),
          CustomCardMainView2(),
          SizedBox(
            height: 10,
          ),
          CustomCardMainView3(),
        ],
      ),
    );
  }
}
