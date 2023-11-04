import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:green_file/routes.dart';
import 'package:green_file/screens/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCcYfWg9mR9f9yVn9BpEtTQVKbrAEpKjPI",
          appId: "1:980052399235:web:0a2b64c253e802681337b6",
          messagingSenderId: "980052399235",
          projectId: "green-file-6e537"));
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
