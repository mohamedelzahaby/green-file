// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/widget/jobs_contanire.dart';
import 'package:green_file/widget/searchbar.dart';
import 'package:green_file/widget/sort&filter.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../controllers/create_project_controller.dart';
import '../widget/drawer.dart';

class Posted_jobs extends StatefulWidget {
  const Posted_jobs({super.key});

  @override
  State<Posted_jobs> createState() => _Posted_jobsState();
}

class _Posted_jobsState extends State<Posted_jobs> {
  final ScrollController vcontroller = ScrollController();
  final CreateProjectController controller = Get.put(CreateProjectController());

  @override
  void initState() {
    controller.getJob();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      endDrawer: const RigthDrawer(),
      body: VsScrollbar(
        controller: vcontroller,
        showTrackOnHover: true,
        isAlwaysShown: true,
        child: ListView.builder(
          controller: vcontroller,
          itemCount: 1,
          itemBuilder: (Context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Search_bar(),
                  ),
                  SizedBox(
                    height: screenHight * 0.05,
                  ),
                  const Sort_filter(),
                  SizedBox(
                    height: screenHight * 0.08,
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
      ),
    );
  }
}
