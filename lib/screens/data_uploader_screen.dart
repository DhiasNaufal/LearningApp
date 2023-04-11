import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learning_cdss/controllers/quiestion_paper/data_uploader.dart';
import 'package:learning_cdss/firebase/loaading_status.dart';

class DataUploaderScreen extends StatelessWidget {
  DataUploaderScreen({super.key});
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Obx(() => Text(
          controller.loadingStatus.value == LoadingStatus.completed
              ? "Uploading Completed"
              : "Uploading")),
    ));
  }
}
