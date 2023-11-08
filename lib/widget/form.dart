// ignore_for_file: camel_case_types, sized_box_for_whitespace, non_constant_identifier_names, avoid_print, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/create_project_controller.dart';

class Job_Form extends StatelessWidget {
  Job_Form({super.key});

  CollectionReference jobs = FirebaseFirestore.instance.collection('jobs');

  final CreateProjectController controller = Get.put(CreateProjectController());

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.4,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        // const Text("post a job",
        //     style: TextStyle(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //     )),
        // // const Text("welcom! nice to see you",
        // //     style: TextStyle(
        // //       fontSize: 18,
        // //       fontWeight: FontWeight.bold,
        // //     )),
        // SizedBox(
        //   height: screenHight * 0.02,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.companyName,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "company name",
                  // prefixIcon: Icon(
                  //   Icons.person,
                  //   color: Colors.grey[400],
                  // ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.sectorWork,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "Sector work",
                  // prefixIcon: Icon(
                  //   Icons.email,
                  //   color: Colors.grey[400],
                  // ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.jobTitle,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: "job title",
                  // prefixIcon: Icon(
                  //   Icons.email,
                  //   color: Colors.grey[400],
                  // ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.description,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: "descripition",
                  // prefixIcon: Icon(
                  //   Icons.email,
                  //   color: Colors.grey[400],
                  // ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.experiance,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: "Expriance",
                  // prefixIcon: Icon(
                  //   Icons.email,
                  //   color: Colors.grey[400],
                  // ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
