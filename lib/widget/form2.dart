// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Job_Form2 extends StatelessWidget {
  Job_Form2({super.key});
  final _englishlevelController = TextEditingController();
  final _coursesController = TextEditingController();
  final _qualificationController = TextEditingController();
  final _locationController = TextEditingController();
  final _ExprianceController = TextEditingController();

  CollectionReference jobs = FirebaseFirestore.instance.collection('jobs');

  Future<void> addJob() {
    // Call the user's CollectionReference to add a new user
    return jobs
        .add({
        
          '_Expriance': _ExprianceController.text, // 42
          '__english level': _englishlevelController.text, // John Doe
          '_courses': _coursesController.text, // Stokes and Sons
          '_qualification': _qualificationController.text, // 42
          '_location': _locationController.text, // 42
          // 42
        })
        .then((value) => print("job Added"))
        .catchError((error) => print("Failed to add job: $error"));
  }

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
                controller: _englishlevelController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
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
                controller: _coursesController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
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
                controller: _qualificationController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
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
                controller: _locationController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
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
