import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const Input({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border() {
      return OutlineInputBorder(
          borderSide: BorderSide(color: controller.text.isEmpty ? Colors.grey[300]! : const Color(0xFFFF4500), width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))
        );
    }
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: border(),
            enabledBorder: border(),
            focusedBorder: border(),
            filled: true,
            fillColor: Colors.white,
          ),
        );
      }
    );
  }
}