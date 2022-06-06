// ignore_for_file: depend_on_referenced_packages, prefer_final_fields, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:driveq/constants.dart';
import 'package:driveq/models/quiz.dart';
import 'package:driveq/screens/quiz/score_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class QuizController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  // int quizId = 0.obs.value;
  // List data = kDummyData[quizId];
  List<Quiz> _quizzes = kDummyData[0]
      .map(
        (quiz) => Quiz(
            id: quiz['id'],
            question: quiz['question'],
            options: quiz['options'],
            answer: quiz['answer_index']),
      )
      .toList();
  List<Quiz> get quizzes => _quizzes;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 20), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Quiz question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: kDelayTime), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _quizzes.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();

      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScoreScreen());
    }
  }

  void updateQuiz(int index) {
    _questionNumber.value = index + 1;
  }
}
