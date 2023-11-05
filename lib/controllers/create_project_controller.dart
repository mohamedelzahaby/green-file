// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import '../models/job_model.dart';

class CreateProjectController extends GetxController {
  RxBool isLoading = true.obs;

  late TextEditingController companyName;

  late TextEditingController sectorWork;

  late TextEditingController jobTitle;
  late TextEditingController description;
  late TextEditingController experiance;
  late TextEditingController englishlevel;
  late TextEditingController courses;
  late TextEditingController qualification;
  late TextEditingController location;

  final auth = FirebaseAuth.instance;

  late GlobalKey<FormState> globalKey;

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  List<jobModel> jobs = [];

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

  addjob() {
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
        location: location.text,
        courses: courses.text,
        userId: auth.currentUser!.uid.toString(),
        // userId: 'mostafa',
      );

      firestore
          .collection('job')
          .doc()
          .set(
            projectModel.toJson(),
          )
          .onError((error, stackTrace) => print(error.toString()));
    }
  }

  final firestore = FirebaseFirestore.instance;

  getJob() async {
    final docs = await FirebaseFirestore.instance.collection("job").get();


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
    location = TextEditingController();
    experiance = TextEditingController();

    globalKey = GlobalKey<FormState>();
    super.onInit();
  }
}
