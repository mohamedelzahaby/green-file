// ignore_for_file: camel_case_types, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names, avoid_print, unused_element

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_file/controllers/create_company_controller.dart';
import 'package:green_file/widget/dropdowen.dart';
// import 'package:get/get_core/src/get_main.dart';

class Company_Form2 extends StatefulWidget {
  const Company_Form2({super.key});

  @override
  State<Company_Form2> createState() => _Company_Form2State();
}

class _Company_Form2State extends State<Company_Form2> {
  final CreateCompanyController companyController =
      Get.put(CreateCompanyController());

  final TextEditingController citiesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.3,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            width: screenwidth * 0.3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GetBuilder<CreateCompanyController>(builder: (context) {
                  return AppTextField(
                      onSelect: (selectedItems) {
                        companyController.seletcLoation(
                            value: selectedItems[0].name);
                        setState(() {
                          companyController.selectedCity =
                              selectedItems[0].name;
                        });
                      },
                      cities: [
                        SelectedListItem(name: "linked_in"),
                        SelectedListItem(name: "email"),
                        SelectedListItem(name: "onsit"),
                      ],
                      textEditingController: citiesController,
                      title: "",
                      hint: "how to apply",
                      isCitySelected: true);
                })),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            width: screenwidth * 0.3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GetBuilder<CreateCompanyController>(builder: (context) {
                  return AppTextField(
                      onSelect: (selectedItems) {
                        setState(() {
                          selectedItems[0].name;
                        });
                      },
                      cities: [
                        SelectedListItem(name: "قطاع التعليم"),
                        SelectedListItem(name: "القطاع الخدمي"),
                        SelectedListItem(name: "القطاع الهندسي"),
                        SelectedListItem(name: "قطاع البترول"),
                        SelectedListItem(name: "القطاع الطبي"),
                        SelectedListItem(name: "قطاع السياحة والفنادق"),
                        SelectedListItem(name: "القطاع التجاري"),
                        SelectedListItem(name: "لقطاع الحكومي"),
                        SelectedListItem(name: "صناعات البلاستيك"),
                        SelectedListItem(name: "الصناعات الثقيلة والسيارات"),
                        SelectedListItem(name: "صناعات الزجاج"),
                        SelectedListItem(name: "الصناعات الكهربائية"),
                        SelectedListItem(name: "الصناعات الكيمائية"),
                        SelectedListItem(name: "الصناعات المعدنية"),
                        SelectedListItem(name: "الصناعات الورقية"),
                        SelectedListItem(name: "الصناعات الزراعية"),
                        SelectedListItem(name: "الصناعات الإلكترونية"),
                        SelectedListItem(name: "الصناعات الطبية"),
                        SelectedListItem(name: "الصناعات الإنشائية"),
                        SelectedListItem(name: "صناعات متنوعة"),
                      ],
                      textEditingController: citiesController,
                      title: "",
                      hint: "sector of work",
                      isCitySelected: true);
                })),
          ),
        ),
        SizedBox(
          height: screenHight * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            width: screenwidth * 0.3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GetBuilder<CreateCompanyController>(builder: (context) {
                  return AppTextField(
                      onSelect: (selectedItems) {
                     
                            selectedItems[0].name;
                        setState(() {
                         
                              selectedItems[0].name;
                        });
                      },
                      cities: [
                        SelectedListItem(
                            value: "قطاع التعليم", name: "AA@ مدارس متنوعة"),
                        SelectedListItem(name: "AB@  المدارس الأهلية"),
                        SelectedListItem(name: "AC@  المدارس الدولية"),
                        SelectedListItem(name: "AD@  جامعات"),
                        SelectedListItem(name: "AE@  معاهد"),
                        SelectedListItem(name: "AF@  حضانة"),
                        SelectedListItem(name: "AG@ شركات إدارة مدرسية"),
                        ///////////////////////////////////////////
                        SelectedListItem(name: "BA@ استشارات هندسية"),
                        SelectedListItem(name: "BB@  مقاولات"),
                        ////////////////////////////////////
                        SelectedListItem(name: "CA@  نفط"),
                        SelectedListItem(name: "CB@  غاز"),
                        SelectedListItem(name: "CC@ حفر"),
                        SelectedListItem(name: "CD@ تكرير"),
                        SelectedListItem(name: "CE@ بتروكيماويات"),
                        SelectedListItem(name: "CF@ توزيع وتسويق"),
                        SelectedListItem(name: "CF@ خدمات واستشارات"),
                        ///////////////////////////////////////////
                        SelectedListItem(name: "DA@ بنوك"),
                        SelectedListItem(name: "DB@مصارف"),
                        SelectedListItem(name: "DC@دفع إلكتروني"),
                        SelectedListItem(name: ""),
                        SelectedListItem(name: ""),
                      ],
                      textEditingController: citiesController,
                      title: "",
                      hint: "commercial activities",
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
