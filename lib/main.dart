import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:green_file/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAxokAATDjYYw7aUvUKoevBO9tmJ7TSDNQ',
          appId: '1:515977321779:ios:01f8019670c2df70edb246',
          messagingSenderId: '515977321779',
          projectId: 'green-file-aca8b'));
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
      initialRoute: AppRoutes.Start_Screen,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const Start_Screen(),
    );
  }
}
