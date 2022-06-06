// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors

import 'package:driveq/constants.dart';
import 'package:driveq/screens/quiz/components/quiz_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:driveq/controllers/quiz_controller.dart';
import 'package:driveq/models/quiz.dart';

class QuestionCard extends StatelessWidget {
  final Quiz quiz;
  const QuestionCard({
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    QuizController _controller = Get.put(QuizController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            quiz.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kLightBlackColor),
          ),
          SizedBox(height: 10 / 2),
          ...List.generate(
            quiz.options.length,
            (index) => QuizOption(
              index: index,
              text: quiz.options[index],
              press: () => _controller.checkAns(quiz, index),
            ),
          ),
        ],
      ),
    );
  }
}
