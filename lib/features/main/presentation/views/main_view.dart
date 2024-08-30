import 'package:adhd/features/main/presentation/views/widgets/card_view1.dart';
import 'package:adhd/features/main/presentation/views/widgets/custom_app_bar.dart';
import 'package:adhd/features/main/presentation/views/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'widgets/card_view2.dart';
import 'widgets/card_view3.dart';

class MainView extends StatelessWidget {
  const MainView({super.key , this.urlImg});
  final String? urlImg;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: MainDrawer(),
        body:SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(urlImg: urlImg),
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
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          CustomCardMainView1(),
          SizedBox(
            height: 15,
          ),
          CustomCardMainView2(),
          SizedBox(
            height: 15,
          ),
          CustomCardMainView3(),
        ],
      ),
    );
  }
}
