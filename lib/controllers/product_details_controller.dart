import 'package:get/get.dart';

import '../models/project_model.dart';

class ProductDetailsController extends GetxController {
  late jobModel projectModel;
  @override
  void onInit() {
    projectModel = Get.arguments['data'];
    super.onInit();
  }
}
