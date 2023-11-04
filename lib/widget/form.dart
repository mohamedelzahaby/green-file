// ignore_for_file: camel_case_types, sized_box_for_whitespace, non_constant_identifier_names, avoid_print, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Job_Form extends StatelessWidget {
  Job_Form({super.key});

  final _companynameController = TextEditingController();
  final _sectorworkController = TextEditingController();
  final _jobtitleController = TextEditingController();
  final _descripitionController = TextEditingController();
  final _ExprianceController = TextEditingController();




    CollectionReference jobs = FirebaseFirestore.instance.collection('jobs');

  Future<void> addJob() {
    // Call the user's CollectionReference to add a new user
    return jobs
        .add({
          '_companyname': _companynameController.text, // John Doe
          '_sectorwork': _sectorworkController.text, // Stokes and Sons
          '_jobtitle': _jobtitleController.text, // 42
          '_descripition': _descripitionController.text, // 42
          '_Expriance': _ExprianceController.text, // 42

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
                controller: _companynameController,
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
                controller: _sectorworkController,
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
                controller: _jobtitleController,
                cursorColor: Colors.black,
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
                controller: _descripitionController,
                cursorColor: Colors.black,
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
                controller: _ExprianceController,
                cursorColor: Colors.black,
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
