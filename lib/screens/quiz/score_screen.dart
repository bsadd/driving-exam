// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, depend_on_referenced_packages, no_leading_underscores_for_local_identifiers

import 'package:driveq/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:driveq/constants.dart';
import 'package:driveq/controllers/quiz_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuizController _qController = Get.put(QuizController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Spacer(flex: 2),
              Text(
                'Score',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                '${_qController.numOfCorrectAns * 10}/${_qController.quizzes.length * 10}',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 2),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: kLightBlackColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
