import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learning_cdss/controllers/quiestion_paper/quiz_paper_controller.dart';
import 'package:learning_cdss/widgets/question_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    QuizPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return QuestionCard(
              model: _questionPaperController.allPapers[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: 3),
    );
  }
}
