// ignore_for_file: file_names, camel_case_types, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Candidates_Contanire extends StatelessWidget {
  const Candidates_Contanire({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      child: const Row(
        children: [
          Column(
            children: [
              Image(
                image: AssetImage("assets/img/man.jpg"),
              )
            ],
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
