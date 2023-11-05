// ignore_for_file: camel_case_types, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/create_project_controller.dart';

class Job_Form2 extends StatelessWidget {
  Job_Form2({super.key});

  final CreateProjectController controller = Get.put(CreateProjectController());

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.4,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.englishlevel,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "english level",
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
                controller: controller.courses,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "courses",
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
                controller: controller.qualification,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "qualification",
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
                controller: controller.location,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "location",
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
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 25),
        //   child: Container(
        //     decoration: BoxDecoration(
        //         color: Colors.white, borderRadius: BorderRadius.circular(12)),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20),
        //       child: TextFormField(
        //         // controller: _emailController,
        //         cursorColor: Colors.black,
        //         decoration: InputDecoration(
        //           hintText: "Expriance",
        //           // prefixIcon: Icon(
        //           //   Icons.email,
        //           //   color: Colors.grey[400],
        //           // ),
        //           border: InputBorder.none,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}
