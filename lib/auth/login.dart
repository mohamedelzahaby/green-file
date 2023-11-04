import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
            // Image.asset(
            //   "assets/img/login.jpg",
            //   fit: BoxFit.fill,
            // ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 50, left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Log in",
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
                  height: screenHight * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    // onTap: signin,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "sign in",
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
                    const Text("Not yet a member?"),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.Registration);
                      },
                      child: const Text(
                        "signup now",
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
