import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: 
        Padding(
          padding: EdgeInsets.only(left: 14, top: 15, right: 14, bottom: 14),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                Spacer(),
                Icon(Icons.chevron_right)
              ],
          ),
        ),
    );
  }
}