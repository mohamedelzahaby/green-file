// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/controllers/create_company_controller.dart';
import 'package:green_file/widget/company_contanire.dart';
// import 'package:green_file/widget/company_contanire.dart';

import 'package:green_file/widget/drawer.dart';
// import 'package:green_file/widget/jobs_contanire.dart';
import 'package:green_file/widget/searchbar.dart';
import 'package:green_file/widget/sort&filter.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

// import '../controllers/create_project_controller.dart';

class Companyposted extends StatefulWidget {
  const Companyposted({super.key});

  @override
  State<Companyposted> createState() => _CompanypostedState();
}

class _CompanypostedState extends State<Companyposted> {
  // final jobModel job;
  final ScrollController vcontroller = ScrollController();
  final CreateCompanyController companyController =
      Get.put(CreateCompanyController());

  bool isLoading = true;

  @override
  void initState() {
    companyController.getcompany().then((value) {
      setState(() {
        isLoading = false;
      });
    });
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
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Search_bar(),
                        ),
                        SizedBox(
                          height: screenHight * 0.05,
                        ),
                        const Sort_filter(),
                      ],
                    ),
                    SizedBox(
                      height: screenHight * 0.08,
                    ),
                    GetBuilder<CreateCompanyController>(builder: (context) {
                      return isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : companyController.companys.isEmpty
                              ? const Center(
                                  child: Text(
                                    "No Data Found",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
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
                                  itemCount: companyController.companys.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Companycontainer(
                                      company:
                                          companyController.companys[index],
                                    );
                                  },
                                );
                    }),
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
