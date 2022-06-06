// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors

import 'package:driveq/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:driveq/controllers/quiz_controller.dart';

class QuizOption extends StatelessWidget {
  const QuizOption({
    required this.text,
    required this.index,
    required this.press,
  });
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      init: QuizController(),
      builder: (qnController) {
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return kGreenColor;
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns) {
              return kRedColor;
            }
          }
          return kGrayColor;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: getTheRightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${index + 1}. $text',
                  style: TextStyle(color: getTheRightColor(), fontSize: 16),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == kGrayColor
                        ? Colors.transparent
                        : getTheRightColor(),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: getTheRightColor()),
                  ),
                  child: getTheRightColor() == kGrayColor
                      ? null
                      : Icon(getTheRightIcon(), size: 16),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
