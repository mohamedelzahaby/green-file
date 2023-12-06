// ignore_for_file: deprecated_member_use, file_names, camel_case_types, unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/controllers/create_company_controller.dart';
import 'package:green_file/widget/companyform.dart';
import 'package:green_file/widget/companyform2.dart';

import 'package:green_file/widget/form.dart';
import 'package:green_file/widget/form2.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../controllers/create_project_controller.dart';
import '../widget/drawer.dart';
import '../widget/searchbar.dart';

class Addcompany extends StatefulWidget {
  const Addcompany({super.key});

  @override
  State<Addcompany> createState() => _AddcompanyState();
}

class _AddcompanyState extends State<Addcompany> {
  // final CreateProjectController controller = Get.put(CreateProjectController());

  final CreateCompanyController companyController =
      Get.put(CreateCompanyController());

  final ScrollController vcontroller = ScrollController();

  // CollectionReference jobs = FirebaseFirestore.instance.collection('jobs');
  // CollectionReference companys =
  //     FirebaseFirestore.instance.collection('companys');

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
                              Scaffold.of(context).openDrawer();
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
                        child: Text("add company",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      Form(
                        key: companyController.globalKey,
                        child: Row(
                          children: [
                            const Company_Form(),
                            SizedBox(
                              width: screenwidth * 0.02,
                            ),
                            const Company_Form2(),
                            SizedBox(
                              width: screenwidth * 0.02,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () => companyController.Addcompany(),
                          child: Container(
                            width: screenwidth * 0.5,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "Add Company",
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
