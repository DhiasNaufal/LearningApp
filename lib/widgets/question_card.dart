import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/quiz_paper_model.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.model});
  final QuizPaperModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [Text("${model.title}")],
        )
      ],
    );
  }
}
