import 'package:adhd/features/main/widgets/custom_app_bar.dart';
import 'package:adhd/features/main/widgets/main_content.dart';
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