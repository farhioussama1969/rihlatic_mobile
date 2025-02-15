import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';

class ShimmerComponent extends StatelessWidget {
  const ShimmerComponent({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MainColors.shadowColor(context)!.withOpacity(0.5),
      highlightColor: MainColors.shadowColor(context)!,
      child: child,
    );
  }
}
