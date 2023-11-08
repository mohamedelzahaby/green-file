// ignore_for_file: camel_case_types, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, avoid_print, unused_element

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/widget/dropdowen.dart';
// import 'package:get/get_core/src/get_main.dart';

import '../controllers/create_project_controller.dart';

class Job_Form2 extends StatefulWidget {
  const Job_Form2({super.key});

  @override
  State<Job_Form2> createState() => _Job_Form2State();
}

class _Job_Form2State extends State<Job_Form2> {
  final CreateProjectController controller = Get.put(CreateProjectController());

  final TextEditingController citiesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.4,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.englishlevel,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: "english level",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.courses,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "courses",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.qualification,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: "qualification",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GetBuilder<CreateProjectController>(builder: (context) {
                  return AppTextField(
                      onSelect: (selectedItems) {
                        controller.seletcLoation(value: selectedItems[0].name);
                        setState(() {
                          controller.selectedCity = selectedItems[0].name;
                        });
                      },
                      cities: [
                        SelectedListItem(name: "الرياض"),
                        SelectedListItem(name: "الخرج"),
                        SelectedListItem(name: "مكة المكرمة"),
                        SelectedListItem(name: "جدة"),
                        SelectedListItem(name: "الطائف"),
                        SelectedListItem(name: "المدينة المنورة"),
                        SelectedListItem(name: "ينبع"),
                        SelectedListItem(name: "القصيم"),
                        SelectedListItem(name: "بريدة"),
                        SelectedListItem(name: "المنطقة الشرقية"),
                        SelectedListItem(name: "الدمام"),
                        SelectedListItem(name: "الأحساء	"),
                        SelectedListItem(name: "حفر الباطن"),
                        SelectedListItem(name: "الجبيل"),
                        SelectedListItem(name: "القطيف"),
                        SelectedListItem(name: "الخبر"),
                        SelectedListItem(name: "الخفجي"),
                        SelectedListItem(name: "رأس تنورة"),
                        SelectedListItem(name: "النعيرية"),
                        SelectedListItem(name: "عسير"),
                        SelectedListItem(name: "أبها"),
                        SelectedListItem(name: "خميس مشيط"),
                        SelectedListItem(name: "بيشة"),
                        SelectedListItem(name: "ظهران الجنوب"),
                        SelectedListItem(name: "تبوك"),
                        SelectedListItem(name: "حائل"),
                        SelectedListItem(name: "الحدود الشمالية"),
                        SelectedListItem(name: "عرعر"),
                        SelectedListItem(name: "جازان"),
                        SelectedListItem(name: "نجران"),
                        SelectedListItem(name: "الباحة"),
                        SelectedListItem(name: "الجوف"),
                        SelectedListItem(name: "سكاكا"),
                      ],
                      textEditingController: citiesController,
                      title: "",
                      hint: controller.selectedCity,
                      isCitySelected: true);
                })),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
      ]),
    );
  }
}
