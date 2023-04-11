import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learning_cdss/configs/themes/app_colors.dart';
import 'package:learning_cdss/widgets/app_circle_button.dart';

class AppIntroScreen extends StatelessWidget {
  const AppIntroScreen({
    super.key,
  });
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: mainGradient(context)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              //color: Colors.white,
              size: 40,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Selamat Datang di Aplikasi Pembelajaran Clinical Decision Support System (CDSS)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 40,
            ),
            AppCircleButton(
              onTap: () => Get.offAndToNamed("/home"),
              child: Icon(
                Icons.forward,
                size: 35,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
