import 'package:flutter/material.dart';
import 'package:learning_cdss/configs/themes/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: mainGradient(context)),
      child: Center(
          child: Image.asset(
        "assets/images/cdss_logo.png",
        height: 200,
      )),
    ));
  }
}
