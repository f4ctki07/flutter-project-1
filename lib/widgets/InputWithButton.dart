import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/Input.dart';

class InputWithButton extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String buttonText;
  final VoidCallback onPressed;

  const InputWithButton({super.key, required this.label, required this.controller, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          Expanded(child: Input(label: label, controller: controller)),
          ValueListenableBuilder(
            valueListenable: controller,
            builder: (context, value, child) {
              return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: controller.text.isEmpty ? Colors.grey[100] : const Color(0xFFFF4500),
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                  onPressed: onPressed,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                          buttonText,
                          style: const TextStyle(color: Colors.black),
                        ),
                    )
              );
            }
          )
        ],
      )
    );
  }
}