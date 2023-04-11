import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:learning_cdss/controllers/auth_controller.dart';
import 'package:learning_cdss/controllers/theme_controller.dart';
import 'package:learning_cdss/services/firebase_storage_service.dart';

class InitialBidings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    //Get.put(NotificationService());
    Get.lazyPut(() => FirebaseStorageService());
  }
}
