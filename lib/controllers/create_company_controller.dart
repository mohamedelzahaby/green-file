// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, non_constant_identifier_names, avoid_print, avoid_function_literals_in_foreach_calls

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:green_file/models/company_model.dart';
import 'package:green_file/models/job_model.dart';
// import 'package:green_file/screens/add_company.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class CreateCompanyController extends GetxController {
  RxBool isLoading = true.obs;
  String selectedCity = "city";
  late jobModel JobModel;

  late TextEditingController companyName;

  late TextEditingController sectorWork;

  late String? location;

  final auth = FirebaseAuth.instance;

  late GlobalKey<FormState> globalKey;

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  List<companyModel> companys = [];

  clearForm() {
    companyName.clear();

    sectorWork.clear();

    location = "";
    update();
  }

  void seletcLoation({required String value}) {
    location = value;
    update();
  }

  Future<List<String>> uploadImages(List<XFile> images) async {
    List<String> urls = [];
    final FirebaseStorage storage = FirebaseStorage.instance;
    final CollectionReference imageCollection =
        FirebaseFirestore.instance.collection('images');

    for (int i = 0; i < images.length; i++) {
      final String fileName = '${DateTime.now().millisecondsSinceEpoch}-$i.jpg';
      final Reference reference = storage.ref().child('images/$fileName');
      final UploadTask uploadTask = reference.putFile(File(images[i].path));
      final TaskSnapshot downloadUrl = await uploadTask.whenComplete(() {});

      if (downloadUrl.state == TaskState.success) {
        final String url = await downloadUrl.ref.getDownloadURL();
        urls.add(url);

        // Store the image download URL in Firestore
        await imageCollection.doc(fileName).set({'url': url});
      }
    }
    return urls;
  }

  Future<void> Addcompany() async {
    final firestore = FirebaseFirestore.instance;
    // final FirebaseAuth auth =FirebaseAuth.instance;
    if (globalKey.currentState!.validate()) {
      print("object");

      companyModel CompanyModel = companyModel(
        companyname: companyName.text,

        sectorwork: sectorWork.text,

        location: location ?? "",

        companyId: auth.currentUser!.uid.toString(),
        // userId: 'mostafa',
      );

// DocumentReference<Map<String, dynamic>> comapnys =await FirebaseFirestore.instance.collection('companys').doc(compModel.companyname).collection('jobs').add(
//    projectModel.toJson(),
// );
      await firestore
          .collection('companys')
          .doc()
          .set(
            CompanyModel.companydata(),
          )
          .onError((error, stackTrace) => print(error.toString()));

      clearForm();
    }
  }

  final firestore = FirebaseFirestore.instance;

  getcompany() async {
    final docs = await FirebaseFirestore.instance.collection("companys").get();

    docs.docs.forEach((element) {
      print("object");
      print(element.data());
      companys.add(companyModel.fromJson(element));
    });

    isLoading(false);
  }

  @override
  void onInit() {
    companyName = TextEditingController();

    sectorWork = TextEditingController();

    globalKey = GlobalKey<FormState>();
    super.onInit();
  }
}
