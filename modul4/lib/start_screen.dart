import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1D428A), // NBA blue background color
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 80),
            const Text(
              'NBA Quiz!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFFC72C), // NBA yellow color
                fontSize: 24,
                fontFamily: 'Helvetica', // Helvetica font
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                backgroundColor: const Color(0xFFFFC72C), // NBA yellow color
                foregroundColor: const Color(0xFF1D428A), // NBA blue color
              ),
              icon: const Icon(Icons.sports_basketball), // Basketball icon
              label: const Text(
                'Start Quiz!',
                style: TextStyle(
                  fontFamily: 'Helvetica', // Helvetica font
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
