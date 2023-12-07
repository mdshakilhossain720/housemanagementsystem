import 'package:flutter/material.dart';
class text extends StatelessWidget {
  final String title;
  const text({ required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize: 20,color: Colors.black87),);
  }
}
