import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_colors.dart';
import '../../controllers/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
