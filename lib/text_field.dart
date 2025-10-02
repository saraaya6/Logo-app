import 'package:flutter/material.dart';
import 'package:sopro/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;

  const CustomTextField({super.key, required this.controller, required this.hint, required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.grey.shade300
        )
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.Primary
        )
       )
    ),
    );
  }
}