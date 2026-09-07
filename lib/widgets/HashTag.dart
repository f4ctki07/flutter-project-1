import 'package:flutter/material.dart';

class HashTag extends StatelessWidget {
  final String tag;

  const HashTag({super.key, required this.tag});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[700], // 상자의 배경색
        borderRadius: BorderRadius.circular(8), // 모든 모서리를 15만큼 둥글게
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          child: Text(
            '#$tag',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}