// ignore_for_file: implementation_imports, unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../routes.dart';

class Start_Screen extends StatelessWidget {
  const Start_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/img/start.jpg")) 
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenwidth * 0.04,
                  bottom: screenHight * 0.15,
                  top: screenHight * 0.25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo & Welcome to ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                      Text(
                        "GreenFile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHight * 0.055,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Streamline your hiring process",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 158, 155, 155),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Connect  with right candidates",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 158, 155, 155),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Start discovering top talent now!",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 158, 155, 155),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHight * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                      //   child: GestureDetector(
                      //     onTap: () {

                      //     },
                      //     child: Container(
                      //       padding: const EdgeInsets.all(10),
                      //       decoration: BoxDecoration(
                      //           color: Colors.grey.withOpacity(0.5),
                      //           borderRadius: BorderRadius.circular(12)),
                      //       child: const Center(
                      //           child: Text(
                      //         "Skip",
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold),
                      //       )),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(right: screenwidth * 0.05),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.Login);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "get started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
