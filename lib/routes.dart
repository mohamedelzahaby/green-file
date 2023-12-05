// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:green_file/auth/login.dart';
import 'package:green_file/screens/Post_a_job.dart';
import 'package:green_file/screens/companyposted.dart';
// import 'package:green_file/screens/home.dart';
import 'package:green_file/screens/complet_profile.dart';
import 'package:green_file/screens/posted_jobs.dart';

import 'package:green_file/screens/start_screen.dart';
import 'package:green_file/widget/navbar.dart';

import 'auth/registration.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoutes.Start_Screen,
    page: () => const Start_Screen(),
  ),
  GetPage(
    name: AppRoutes.Profile,
    page: () => const Profile(),
  ),
  GetPage(
    name: AppRoutes.Login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoutes.Registration,
    page: () => const Registration(),
  ),
  GetPage(
    name: AppRoutes.Companyposted,
    page: () => const Companyposted(),
  ),
  GetPage(
    name: AppRoutes.NavBar,
    page: () => NavBar(),
  ),
  GetPage(
    name: AppRoutes.Posted_jobs,
    page: () => const Posted_jobs(),
  ),
  GetPage(
    name: AppRoutes.Post_a_job,
    page: () => const Post_a_job(),
  ),
];

class AppRoutes {
  static const String Start_Screen = '/';
  static const String Screen1 = '/Screen1';
  static const String Screen2 = '/Screen2';
  static const String Screen3 = '/Screen3';
  static const String Login = '/Login';
  static const String Registration = '/Registration';
  static const String Profile = '/Profile';
  static const String Home = '/Home';
  static const String NavBar = '/NavBar';
  static const String Companyposted = '/Companyposted';
  static const String Posted_jobs = '/Posted_jobs';
  static const String Post_a_job = '/Post_a_job';
}
