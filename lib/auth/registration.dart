// ignore_for_file: use_build_context_synchronously, invalid_return_type_for_catch_error, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';
import 'auth.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();

  Future signup() async {
    print("object");
    // var userCredential =
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        )
        .catchError((e) => print(e));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const auth();
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
  }

  bool hideloginpassword = true;

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/img/login.jpg"))),
            height: screenHight,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello & Welcome to ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Text(
                  "GreenFile",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 50, left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("sign up",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                const Text("welcom! nice to see you",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: screenHight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _nameController,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "full name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey[400],
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _emailController,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey[400],
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: hideloginpassword,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "password",
                          suffixIcon: GestureDetector(
                              onTap: toggleloginpassword,
                              child: Icon(
                                  hideloginpassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[400])),
                          prefixIcon: Icon(Icons.key, color: Colors.grey[400]),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.02,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(12)),
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 20),
                //       child: TextFormField(
                //         controller: _emailController,
                //         cursorColor: Colors.black,
                //         decoration: InputDecoration(
                //           hintText: "phone number",
                //           prefixIcon: Icon(
                //             Icons.phone,
                //             color: Colors.grey[400],
                //           ),
                //           border: InputBorder.none,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: screenHight * 0.02,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: signup,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("have an account? "),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.Login);
                      },
                      child: const Text(
                        "Login now",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHight * 0.05,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void toggleloginpassword() {
    setState(() {
      hideloginpassword = !hideloginpassword;
    });
  }
}
