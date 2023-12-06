// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, non_constant_identifier_names, avoid_print, avoid_function_literals_in_foreach_calls

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:green_file/models/company_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import '../models/job_model.dart';

class CreateProjectController extends GetxController {
  RxBool isLoading = true.obs;
  String selectedCity = "city";
  late companyModel CompanyModel;
  late jobModel JobModel;
  late TextEditingController companyName;

  late TextEditingController sectorWork;

  late TextEditingController jobTitle;
  late TextEditingController description;
  late TextEditingController experiance;
  late TextEditingController englishlevel;
  late TextEditingController courses;
  late TextEditingController qualification;
  late String? location;

  final auth = FirebaseAuth.instance;

  late GlobalKey<FormState> globalKey;

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  List<jobModel> jobs = [];

  clearForm() {
    companyName.clear();

    sectorWork.clear();

    jobTitle.clear();
    description.clear();
    experiance.clear();
    englishlevel.clear();
    courses.clear();
    qualification.clear();
    location = "";
    update();
  }

  // pickImage() async {
  //   imageFileList = [];
  //   final List<XFile> selectedImages = await imagePicker.pickMultiImage();
  //   if (selectedImages.isNotEmpty) {
  //     imageFileList!.addAll(selectedImages);
  //   }
  //   // List<String> url = [];
  //   // try{
  //   //   url=await uploadImages(imageFileList!) ;
  //   //   for(var item in url)
  //   //     {
  //   //       print(item.toString());
  //   //     }
  //   // }
  //   // catch(e)
  //   // {
  //   //   print('*****************************');
  //   //   print(e.toString());
  //   // }
  // }

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

  Future<void> addjob() async {
    final firestore = FirebaseFirestore.instance;
    // final FirebaseAuth auth =FirebaseAuth.instance;
    if (globalKey.currentState!.validate()) {
      print("object");

      jobModel projectModel = jobModel(
        companyname: companyName.text,
        description: description.text,
        sectorwork: sectorWork.text,
        jobtitle: jobTitle.text,
        Expriance: experiance.text,
        englishlevel: englishlevel.text,
        qualification: qualification.text,
        location: location ?? "",
        courses: courses.text,
        userId: auth.currentUser!.uid.toString(),
        // userId: 'mostafa',
      );

      await firestore
          .collection('jobs')
          .doc()
          .set(
            projectModel.toJson(),
          )
          .onError((error, stackTrace) => print(error.toString()));

      clearForm();
    }
  }

  final firestore = FirebaseFirestore.instance;

  getJob() async {
    final docs = await FirebaseFirestore.instance.collection("jobs").get();

    // .where(JobModel.companyname, isEqualTo: CompanyModel.companyname)
    // .where('companyname', isEqualTo: text)
    // .get();

    docs.docs.forEach((element) {
      print("object");
      print(element.data());
      jobs.add(jobModel.fromJson(element));
    });

    isLoading(false);
  }

  @override
  void onInit() {
    companyName = TextEditingController();
    description = TextEditingController();
    sectorWork = TextEditingController();
    jobTitle = TextEditingController();
    englishlevel = TextEditingController();
    courses = TextEditingController();
    qualification = TextEditingController();
    experiance = TextEditingController();

    globalKey = GlobalKey<FormState>();
    super.onInit();
  }
}
