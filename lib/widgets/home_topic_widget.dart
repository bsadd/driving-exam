// ignore_for_file: prefer_const_constructors

import 'package:driveq/constants.dart';
import 'package:driveq/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class HomeTopicWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback pressRead;
  final VoidCallback pressQuiz;

  const HomeTopicWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.pressRead,
    required this.pressQuiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10 + 1,
        bottom: 30,
      ),
      height: 200,
      width: 180,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(image),
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
            ),
          ),
          Positioned(
            top: 0,
            right: 5,
            left: 5,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 100,
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressRead,
                        child: Container(
                          width: 90,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Read'),
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          text: 'Quiz',
                          press: pressQuiz,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
