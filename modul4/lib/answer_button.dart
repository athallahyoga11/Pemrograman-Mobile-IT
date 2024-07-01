import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFF1D428A),
          backgroundColor: const Color(0xFFFFC72C),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40), // NBA blue color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
            side: BorderSide(color: Colors.black), // Border color
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Helvetica', // NBA font
            fontSize: 18, // Larger font size
            fontWeight: FontWeight.bold, // Bold text
            color: Colors.black, // Text color
          ),
        ),
      ),
    );
  }
}
