// ignore_for_file: deprecated_member_use, file_names, camel_case_types, unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:green_file/widget/form.dart';
import 'package:green_file/widget/form2.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../controllers/create_project_controller.dart';
import '../widget/drawer.dart';
import '../widget/searchbar.dart';

class Post_a_job extends StatefulWidget {
  const Post_a_job({super.key});

  @override
  State<Post_a_job> createState() => _Post_a_jobState();
}

class _Post_a_jobState extends State<Post_a_job> {
  final CreateProjectController controller = Get.put(CreateProjectController());

  final ScrollController vcontroller = ScrollController();

  // CollectionReference jobs = FirebaseFirestore.instance.collection('jobs');

  // Future<void> addJob() {

  //   // Call the user's CollectionReference to add a new user
  //   return jobs
  //       .add({
  //         '_companyname': _companynameController.text, // John Doe
  //         '_sectorwork': _sectorworkController.text, // Stokes and Sons
  //         '_jobtitle': _jobtitleController.text, // 42
  //         '_descripition': _descripitionController.text, // 42
  //         '_Expriance': _ExprianceController.text, // 42
  //         '_englishlevel': _englishlevelController.text, // John Doe
  //         '_courses': _coursesController.text, // Stokes and Sons
  //         '_qualification': _qualificationController.text, // 42
  //         '_location': _locationController.text, // 42
  //          // 42

  //       })
  //       .then((value) => print("job Added"))
  //       .catchError((error) => print("Failed to add job: $error"));
  // }

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        endDrawer: const RigthDrawer(),
        body: VsScrollbar(
            controller: vcontroller,
            showTrackOnHover: true,
            isAlwaysShown: true,
            child: ListView.builder(
                itemCount: 1,
                controller: vcontroller,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.00, -1.00),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 8, 8, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              // drawer
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: const Icon(
                              Icons.dehaze,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const Search_bar(),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 15.0),
                        child: Text("post a job",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      Form(
                        key: controller.globalKey,
                        child: Row(
                          children: [
                            Job_Form(),
                            SizedBox(
                              width: screenwidth * 0.02,
                            ),
                            const Job_Form2(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () => controller.addjob(),
                          child: Container(
                            width: screenwidth * 0.5,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "Add job",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  );
                })));
  }
}
