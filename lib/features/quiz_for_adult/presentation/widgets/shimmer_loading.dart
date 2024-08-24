import 'package:adhd/features/quiz%20for%20kid/presentation/widgets/sketon.dart';
import 'package:flutter/material.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 50),
        child: Column(children: [
          const Skeleton(height: 300, width: double.infinity),
          const SizedBox(height: 50),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (1 / .60),
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const Skeleton(
                  height: 50,
                  width: double.infinity,
                );
              },
            ),
          ),
          const Row(
            children: [
              Skeleton(
                height: 50,
                width: 100,
              ),
              Spacer(),
              Skeleton(
                height: 50,
                width: 100,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
