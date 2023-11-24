// import 'package:flutter/material.dart';

// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:practical/home.dart';
// import 'package:practical/screen%202.dart';
// import 'package:practical/screen3.dart';

// class NavBar extends StatefulWidget {
//   const NavBar({super.key});

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return (
//       bottomNavigationBar: GNav(

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, unused_import

//         activeColor: Colors.white,
//         backgroundColor: Colors.black,
//         tabs: [
//           GButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) {
//                   return const Home();
//                 }),
//               );
//             },
//             iconColor: Colors.white,
//             icon: Icons.home,
//             text: "home",
//           ),
//           GButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) {
//                   return const Screen2();
//                 }),
//               );
//             },
//             iconColor: Colors.white,
//             icon: Icons.person,
//             text: "Me",
//           ),
//           GButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) {
//                   return  const Screen3();
//                 }),
//               );
//             },
//             iconColor: Colors.white,
//             icon: Icons.settings,
//             text: "Setting",
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:green_file/screens/Candidtes.dart';
import 'package:green_file/screens/post_a_job.dart';
import 'package:green_file/screens/reports_screen.dart';
import 'package:line_icons/line_icons.dart';

// import '../screens/home.dart';
import '../screens/posted_jobs.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: NavBar()));

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Candidates(),
    // Posted_jobs(),
    // Post_a_job(),
    Reports(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 4,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                // GButton(
                //   icon: LineIcons.home,
                //   text: 'Home',
                // ),
                GButton(
                  icon: LineIcons.personEnteringBooth,
                  text: 'Candidates',
                ),
                // GButton(
                //   icon: LineIcons.eye,
                //   text: 'Posted jobs',
                // ),
                // GButton(
                //   icon: LineIcons.plus,
                //   text: 'Post a job',
                // ),
                GButton(
                  icon: LineIcons.newspaper,
                  text: 'Reports',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
