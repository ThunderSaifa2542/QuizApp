import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;

  //const AnswerButton(this.answerText, {super.key});

    const AnswerButton({
      super.key,
      required this.answer,
      required this.onTap, required this.answerText,
    });
    final String answer;
    final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height:10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 58, 0, 97),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            child: Text(
              answerText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
