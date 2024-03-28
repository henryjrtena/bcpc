import 'package:brgy_abella/features/find/find_page.dart';
import 'package:brgy_abella/features/home/home_page.dart';
import 'package:brgy_abella/features/insert/insert_page.dart';
import 'package:brgy_abella/features/login/login_page.dart';
import 'package:brgy_abella/utilities/constant.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: blue),
            child: Text(appName),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () => routeTo(context, 0),
          ),
          ListTile(
            title: const Text('Insert'),
            leading: const Icon(Icons.add),
            onTap: () => routeTo(context, 1),
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
            onTap: () => routeTo(context, -1),
          ),
        ],
      ),
    );
  }

  void routeTo(BuildContext context, int index) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => switch (index) {
              0 => const HomePage(),
              1 => const InsertPage(),
              2 => const FindPage(),
              _ => const LoginPage(),
            }));
  }
}
