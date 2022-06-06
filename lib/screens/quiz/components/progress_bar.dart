// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:driveq/constants.dart';
import 'package:driveq/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrayColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: GetBuilder<QuizController>(
        init: QuizController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${(controller.animation.value * 60).round()} sec',
                        style: TextStyle(color: Colors.white),
                      ),
                      // Image.asset('assets/icons/clock.svg'),
                      WebsafeSvg.asset('assets/icons/clock.svg'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
