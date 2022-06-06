// ignore_for_file: prefer_const_constructors

import 'package:driveq/constants.dart';
import 'package:driveq/screens/quiz/quiz_screen.dart';
import 'package:driveq/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class HomeQuizWidget extends StatelessWidget {
  final String image;
  const HomeQuizWidget({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 180,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
                right: size.width * .3,
              ),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 25,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '80 Questions',
                    style: TextStyle(color: kBlackColor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'All Topics',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: CustomButton(
                text: 'Start',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuizScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
