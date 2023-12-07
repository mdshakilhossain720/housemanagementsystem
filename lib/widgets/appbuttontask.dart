import 'package:flutter/material.dart';
class AppButtonResuable extends StatelessWidget {
  final Widget child;
  final VoidCallback ontab;
  const AppButtonResuable({
    super.key, required this.child, required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(12),
          ),
          onPressed: ontab, child: child),
    );
  }
}