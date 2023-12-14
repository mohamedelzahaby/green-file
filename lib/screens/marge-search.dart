// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:green_file/widget/drawer.dart';
import 'package:green_file/widget/searchbar.dart';
import 'package:green_file/widget/sort&filter.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

class Marge_search extends StatefulWidget {
  const Marge_search({super.key});

  @override
  State<Marge_search> createState() => _Marge_searchState();
}

class _Marge_searchState extends State<Marge_search> {
  final ScrollController vcontroller = ScrollController();
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
                                alignment:
                                    const AlignmentDirectional(1.00, -1.00),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 8, 0),
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                              Row(
                                children: [
                                  Column(
                                    children: [],
                                  ),
                                  VerticalDivider(
                                    // height: screenHight * 1,
                                    width: 40,
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Column(
                                    children: [],
                                  ),
                                ],
                              ),
                            ]));
                  }));
        }));
  }
}
