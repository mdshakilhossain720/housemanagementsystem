import 'package:flutter/material.dart';
class SizeBoxResuable extends StatelessWidget {
  final double height;
  const SizeBoxResuable({required this.height,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ,

    );
  }
}
class CustomSizeWidth extends StatelessWidget {
  final double width;
  const CustomSizeWidth({required this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}



