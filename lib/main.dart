import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learning_cdss/binding/initial_binding.dart';
import 'package:learning_cdss/configs/themes/light_theme.dart';
import 'package:learning_cdss/controllers/quiestion_paper/data_uploader.dart';
import 'package:learning_cdss/controllers/theme_controller.dart';
import 'package:learning_cdss/firebase_options.dart';
import 'package:learning_cdss/routes/app_routes.dart';
import 'package:learning_cdss/screens/data_uploader_screen.dart';
import 'package:learning_cdss/screens/splash/splash_screen.dart';

//============= Fungsi Upload Data Ke Firestore =============
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(
//     home: DataUploaderScreen(),
//   ));
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFireBase();
  InitialBidings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().getLightheme(),
      darkTheme: Get.find<ThemeController>().getDarkTheme(),
      getPages: AppRoutes.routes(),
    );
  }
}

Future<void> initFireBase() async {
  await Firebase.initializeApp(
    name: 'quizzle-demo',
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
