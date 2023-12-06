// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:green_file/widget/drawer.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../controllers/create_project_controller.dart';
import '../widget/jobs_contanire.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  // final jobModel job;
  final ScrollController vcontroller = ScrollController();
  final CreateProjectController controller = Get.put(CreateProjectController());

  @override
  void initState() {
    controller.getJob("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: const RigthDrawer(),
      body: Builder(builder: (context) {
        return VsScrollbar(
          controller: vcontroller,
          showTrackOnHover: true,
          isAlwaysShown: true,
          child: ListView.builder(
            controller: vcontroller,
            itemCount: 1,
            itemBuilder: (Context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "11/12/2020",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
                    Obx(
                      () => controller.isLoading.value
                          ? const CircularProgressIndicator()
                          : GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisExtent: 150,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: controller.jobs.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Jobs_contanire(
                                  job: controller.jobs[index],
                                );
                              },
                            ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
