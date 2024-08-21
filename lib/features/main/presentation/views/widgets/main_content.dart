
import 'package:adhd/features/main/presentation/views/widgets/card_view1.dart';
import 'package:adhd/features/main/presentation/views/widgets/card_view2.dart';
import 'package:adhd/features/main/presentation/views/widgets/card_view3.dart';
import 'package:flutter/material.dart';

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
