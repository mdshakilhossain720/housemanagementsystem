import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String text;
  final bool? obsceure;
  final TextEditingController controller;
  final int? maxline;
  const CustomTextField({
    super.key, required this.text, required this.controller,this.obsceure,this.maxline
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline??1,
      controller: controller,
      obscureText: obsceure??false,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: text,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,

          )
      ),
    );
  }
}