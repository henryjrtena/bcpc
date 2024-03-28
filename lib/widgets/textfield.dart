import 'package:brgy_abella/utilities/constant.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final int? maxLength;
  final bool readOnly;

  const AppTextField({
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.maxLength,
    this.readOnly = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: black, fontWeight: FontWeight.bold),
      controller: controller,
      obscureText: obscureText,
      maxLength: maxLength,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500]),
      ),
      readOnly: readOnly,
    );
  }
}
