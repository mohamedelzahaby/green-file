import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
// import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../widget/drawer.dart';

class CandidatesProfile extends StatefulWidget {
  const CandidatesProfile({super.key});

  @override
  State<CandidatesProfile> createState() => _CandidatesProfileState();
}

class _CandidatesProfileState extends State<CandidatesProfile> {
  final ScrollController vcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        endDrawer: const RigthDrawer(),
        body: Builder(builder: (context) {
          return VsScrollbar(
            controller: vcontroller,
            showTrackOnHover: true,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.00, -1.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 5, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          // drawer
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: const Icon(
                          Icons.dehaze,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.42,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          height: size.height * 0.3,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                tileMode: TileMode.repeated,
                                colors: <Color>[
                                  Color.fromRGBO(3, 139, 178, 1),
                                  Color.fromRGBO(123, 223, 221, 1)
                                ]),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 50, left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sam Profile",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "assets/img/man.jpg",
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Sam Fabio",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            "Riyadh, Saudi Arabia",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30),
                                      Text(
                                        "Product designer",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "UR Bureau",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 30),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "CV:",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Age:",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Birthday:",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Gender: ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Experience: ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Email: ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                        Row(
                          children: [
                            Text(
                              "Number: ",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 71, 71, 71)),
                            ),
                          ],
                        ),
                        Divider(height: 40, thickness: 2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
