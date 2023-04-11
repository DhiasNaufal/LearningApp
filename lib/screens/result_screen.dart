import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../configs/themes/ui_parameters.dart';
import '../controllers/question_paper/quiz_controller.dart';

class Resultcreen extends GetView<QuizController> {
  const Resultcreen({Key? key}) : super(key: key);

  static const String routeName = '/resultscreen';

  @override
  Widget build(BuildContext context) {
    final Color _textColor = UIParameters.isDarkMode(context)
        ? Colors.white
        : Theme.of(context).primaryColor;

    return Scaffold();
  }
}
