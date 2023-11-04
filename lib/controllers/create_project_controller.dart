// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, non_constant_identifier_names

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import '../models/job_model.dart';

class CreateProjectController extends GetxController {
  late TextEditingController _campanyname;

  late TextEditingController _sectorwork;

  late TextEditingController _jobtitle;
  late TextEditingController _descripition;
  late TextEditingController _Expriance;
  late TextEditingController _englishlevel;
  late TextEditingController  _courses;
  late TextEditingController _qualification;
  late TextEditingController _location;

  



  late GlobalKey<FormState> globalKey;

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  pickImage() async {
    imageFileList = [];
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    // List<String> url = [];
    // try{
    //   url=await uploadImages(imageFileList!) ;
    //   for(var item in url)
    //     {
    //       print(item.toString());
    //     }
    // }
    // catch(e)
    // {
    //   print('*****************************');
    //   print(e.toString());
    // }
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

  addjob() {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    // final FirebaseAuth _auth =FirebaseAuth.instance;
    if (globalKey.currentState!.validate() && imageFileList!.isNotEmpty) {
      uploadImages(imageFileList!).then((value) {
        jobModel projectModel = jobModel(
          companyname: _campanyname.text,
          description: _descripition.text,
          sectorwork:_sectorwork.text,
         jobtitle:_jobtitle.text,
          Expriance: _Expriance.text,
           englishlevel: _englishlevel.text,
         qualification: _qualification.text,
         location: _location.text,
           courses: _courses.text,


          
          // userId: _auth.currentUser!.uid.toString(),
          userId: 'mostafa',
          images: value,
        );
        _firestore.collection('job').doc().set(
              projectModel.toJson(),
            );
      });
    }
  }

  @override
  void onInit() {
    _campanyname = TextEditingController();
    _descripition = TextEditingController();
    _sectorwork = TextEditingController();
    _jobtitle = TextEditingController();
     _englishlevel= TextEditingController();
    _courses = TextEditingController();
    _qualification = TextEditingController();
    _location = TextEditingController();
    



    globalKey = GlobalKey<FormState>();
    super.onInit();
  }
}
