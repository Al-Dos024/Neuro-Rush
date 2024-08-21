import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width}) : super(key: key);

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: const LinearGradient(colors: [Colors.white, Colors.black]),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(10 / 2),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}

class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton({Key? key, this.size = 24}) : super(key: key);

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Shimmer(
        gradient: const LinearGradient(colors: [Colors.white, Colors.orange]),
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.04),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
