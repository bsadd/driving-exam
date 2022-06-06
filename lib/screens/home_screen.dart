// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:driveq/constants.dart';
import 'package:driveq/screens/quiz/quiz_screen.dart';
import 'package:driveq/screens/read/read_screen.dart';
import 'package:driveq/widgets/home_quiz_widget.dart';
import 'package:driveq/widgets/home_topic_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List topicImages = [
      'ht1.png',
      'ht2.png',
      'ht3.png',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .09),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: 'Driving Theory \nStart '),
                              TextSpan(
                                text: 'Learning',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeTopicWidget(
                          image: 'assets/images/${topicImages[0]}',
                          title: 'Manoeuvres',
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ReadScreen();
                                },
                              ),
                            );
                          },
                          pressQuiz: () {
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
                        HomeTopicWidget(
                          image: 'assets/images/${topicImages[1]}',
                          title: 'Regulations',
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ReadScreen();
                                },
                              ),
                            );
                          },
                          pressQuiz: () {
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
                        HomeTopicWidget(
                          image: 'assets/images/${topicImages[2]}',
                          title: 'Hazard Perception',
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ReadScreen();
                                },
                              ),
                            );
                          },
                          pressQuiz: () {
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
                        SizedBox(width: 10 + 1),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Combined Quiz'),
                              ],
                            ),
                          ),
                        ),
                        HomeQuizWidget(
                          size: size,
                          image: 'assets/images/hq3.png',
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Continue...'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          //90 available
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 40,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hazard Perception',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  '70% Completed',
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Image.asset('assets/images/ht3.png'),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 5,
                                  width: size.width * .7,
                                  decoration: BoxDecoration(
                                    gradient: kPrimaryGradient,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
