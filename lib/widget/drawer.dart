// ignore_for_file: sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_file/widget/navbar.dart';

import '../screens/complet_profile.dart';

class RigthDrawer extends StatefulWidget {
  const RigthDrawer({
    super.key,
  });

  @override
  State<RigthDrawer> createState() => _RigthDrawerState();
}

class _RigthDrawerState extends State<RigthDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/man.jpg"),
                child: Text("M"),
                backgroundColor: Colors.black,
              ),
              accountName: Text(
                'Mohamedgamal',
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "Eng-mohamedgamal",
                style: TextStyle(color: Colors.white),
              )),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NavBar();
                }),
              );
            },
          ),
          ListTile(
            title: const Text('Porfile'),
            leading: const Icon(Icons.person),
            onTap: () {
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Profile();
                  }),
                );
              }
            },
          ),
          // ListTile(
          //   title: const Text('Setting'),
          //   leading: const Icon(Icons.settings),
          //   onTap: () {
          //     {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) {
          //            return const SettingsScreen();
          //         }),
          //       );
          //     }
          //   },
          // ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.arrow_back),
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
    );
  }
}
