import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final TextEditingController controller;
  final bool or;
  final String text;
  const TextFieldAuth({
    Key? key,
    required this.text,
    required this.or,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: or,
      decoration: InputDecoration(helperText: text),
    );
  }
}
