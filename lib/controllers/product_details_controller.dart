// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';


import '../models/job_model.dart';


class JobDetailsController extends GetxController {
  late jobModel JobModel;
  @override
  void onInit() {
    JobModel = Get.arguments['data'];
    super.onInit();
  }
}
