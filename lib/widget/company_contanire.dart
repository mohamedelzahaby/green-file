import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/models/company_model.dart';
// import 'package:green_file/models/job_model.dart';
import 'package:green_file/routes.dart';

class Companycontainer extends StatelessWidget {
  const Companycontainer({
    super.key,
    required this.company,
  });
  final companyModel company;

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.Posted_jobs);
      },
      child: Container(
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
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage(
                      "assets/img/aramco.png",
                    ),
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                  Text(company.companyname),
                ],
              ),
              SizedBox(
                height: screenHight * 0.01,
              ),
              Text(company.sectorwork,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: screenHight * 0.01,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(company.location),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
