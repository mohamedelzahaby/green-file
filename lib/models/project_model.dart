// import 'dart:convert';

// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';

class jobModel {
  jobModel({
    required this.userId,
    required this.companyname,
    required this.description,
    required this.images,
    required this.sectorwork,
    required this.jobtitle,
    required this.Expriance,
    required this.englishlevel,
    required this.location,
    required this.qualification,
    required this.courses,
  });

  final String userId;
  final String companyname;
  final String description;
  final String Expriance;
  final String jobtitle;
  final String sectorwork;
  final String englishlevel;
  final String location;
  final String qualification;
  final String courses;

  final List<String> images;

  factory jobModel.fromJson(DocumentSnapshot<Map<String, dynamic>> json) {
    final data = json.data();
    return jobModel(
      userId: data!["userId"],
      companyname: data["companyname"],
      Expriance: data["Expriance"],
      jobtitle: data['jobtitle'],
      sectorwork: data['sectorwork'],
      description: data["description"],
      englishlevel: data["englishlevel"],
      location: data["location"],
      qualification: data["qualification"],
      courses: data["courses"],
      images: List<String>.from(data["images"].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "companyname": companyname,
        "description": description,
        " Expriance": Expriance,
        "jobtitle": jobtitle,
        "sectorwork": sectorwork,
        "englishlevel": englishlevel,
        " location": location,
        "qualification": qualification,
        "courses": courses,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
