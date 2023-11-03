// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Jobs_contanire extends StatelessWidget {
  const Jobs_contanire({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHight * 0.2,
      width: screenwidth * 0.2,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    "assets/img/man.jpg",
                  ),
                ),
                Text("company name")
              ],
            ),
            SizedBox(
              height: screenHight * 0.01,
            ),
            const Text("jop title",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: screenHight * 0.01,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text("location"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
