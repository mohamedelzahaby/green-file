// ignore_for_file: deprecated_member_use, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:green_file/widget/form.dart';
import 'package:green_file/widget/form2.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../widget/drawer.dart';
import '../widget/searchbar.dart';

class Post_a_job extends StatefulWidget {
  const Post_a_job({super.key});

  @override
  State<Post_a_job> createState() => _Post_a_jobState();
}

class _Post_a_jobState extends State<Post_a_job> {
  final ScrollController vcontroller = ScrollController();
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
                      Row(
                        children: [
                          const Job_Form(),
                          SizedBox(
                            width: screenwidth * 0.02,
                          ),
                          const Job_Form2(),
                        ],
                      ),
                    ],
                  );
                })));
  }
}
