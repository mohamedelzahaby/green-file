// import 'dart:convert';

// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';

class companyModel {
  companyModel({
    required this.companyId,
    required this.companyname,
    required this.sectorwork,
    required this.location,
  });

  final String companyId;
  final String companyname;

  final String sectorwork;

  final String location;

  factory companyModel.fromJson(DocumentSnapshot<Map<String, dynamic>> json) {
    final data = json.data();
    return companyModel(
      companyId: data!["CompanyId"],
      companyname: data["companyname"],
      sectorwork: data['sectorwork'],
      location: data["location"],
    );
  }

  Map<String, dynamic> companydata() => {
        "CompanyId": companyId,
        "companyname": companyname,
        "sectorwork": sectorwork,
        "location": location,
      };
}
