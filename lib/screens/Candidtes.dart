// ignore_for_file: file_names, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../widget/drawer.dart';
import '../widget/searchbar.dart';
import '../widget/sort&filter.dart';

class Candidates extends StatefulWidget {
  const Candidates({super.key});

  @override
  State<Candidates> createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
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
          controller: vcontroller,
          itemCount: 20,
          itemBuilder: (Context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Search_bar(),
                SizedBox(
                  height: screenHight * 0.05,
                ),
                const Sort_filter(),
              ],
            );
          },
        ),
      ),
    );
  }
}
