// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  final void Function(String)? onChange;
  final TextEditingController? textController;
  const Search_bar({super.key, this.onChange, this.textController});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenwidth * 0.3,
      child: TextFormField(
        controller: textController,
        onChanged: onChange,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            ///////////////////////////
            child: Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Container(
                height: screenHight * 0.075,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.black, width: 2)),
          hintText: "Search here",
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.black, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.green, width: 2)),
        ),
      ),
    );
  }
}
