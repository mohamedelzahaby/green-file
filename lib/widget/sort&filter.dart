// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Sort_filter extends StatelessWidget {
  const Sort_filter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: screenHight * 0.05,
          width: screenwidth * 0.07,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(18)),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.list), Text("filter")]),
        ),
        SizedBox(
          width: screenwidth * 0.01,
        ),
        Container(
            height: screenHight * 0.05,
            width: screenwidth * 0.07,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(18)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.sort), Text("sort")]))
      ],
    );
  }
}
