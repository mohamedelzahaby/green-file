import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:green_file/routes.dart';
import 'package:green_file/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'green file',
      getPages: routes,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Start_Screen(),
    );
  }
}
