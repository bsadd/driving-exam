// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, depend_on_referenced_packages, no_leading_underscores_for_local_identifiers

import 'package:driveq/constants.dart';
import 'package:driveq/controllers/quiz_controller.dart';
import 'package:driveq/screens/quiz/components/quiz_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuizController _controller = Get.put(QuizController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text(
              'Skip',
              style: TextStyle(
                color: kLightBlackColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: QuizBody(),
    );
  }
}
