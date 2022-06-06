// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, no_leading_underscores_for_local_identifiers

import 'package:driveq/constants.dart';
import 'package:driveq/controllers/quiz_controller.dart';
import 'package:driveq/screens/quiz/components/progress_bar.dart';
import 'package:driveq/screens/quiz/components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizBody extends StatelessWidget {
  const QuizBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController _quizController = Get.put(QuizController());
    // _quizController.quizId = 0;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ProgressBar(),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text: 'Question ${_quizController.questionNumber.value}',
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                          text: '/${_quizController.quizzes.length}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: kLightBlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 10),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _quizController.quizzes.length,
                  controller: _quizController.pageController,
                  itemBuilder: (context, index) => QuestionCard(
                    quiz: _quizController.quizzes[index],
                  ),
                  onPageChanged: _quizController.updateQuiz,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
