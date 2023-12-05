// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:green_file/models/company_model.dart';

import '../models/job_model.dart';

class JobDetailsController extends GetxController {
  late jobModel JobModel;
  @override
  void onInit() {
    JobModel = Get.arguments['data'];
    super.onInit();
  }
}

class CompanyDetailsController extends GetxController {
  late companyModel CompanyModel;
  @override
  void onInit() {
    CompanyModel = Get.arguments['data'];
    super.onInit();
  }
}





