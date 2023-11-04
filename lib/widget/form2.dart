// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Job_Form2 extends StatelessWidget {
  const Job_Form2({super.key});

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
                // controller: _emailController,
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
                // controller: _emailController,
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
                // controller: _emailController,
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
                // controller: _emailController,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                // controller: _emailController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
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
