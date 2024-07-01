import 'package:flutter/material.dart';
import 'package:modul4/data/questions.dart';
import 'package:modul4/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
    required this.onStartScreen,
  });

  final List<String> chosenAnswers;
  final VoidCallback onRestart;
  final VoidCallback onStartScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correctAnswer': questions[i].answers[0],
        'userAnswer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['correctAnswer'] == data['userAnswer'];
    }).length;

    return Scaffold(
      backgroundColor: const Color(0xFF1D428A), // NBA blue background color
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
                style: const TextStyle(
                  color: const Color(0xFFFFC72C), // NBA yellow color
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              QuestionSummary(summaryData),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: onRestart,
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF1D428A),
                  backgroundColor: const Color(0xFFFFC72C), // NBA blue color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                icon: const Icon(Icons.refresh),
                label: const Text(
                  'Restart Quiz!',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: onStartScreen,
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF1D428A),
                  backgroundColor: const Color(0xFFFFC72C), // NBA blue color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                icon: const Icon(Icons.home),
                label: const Text(
                  'Go to Start Screen!',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
