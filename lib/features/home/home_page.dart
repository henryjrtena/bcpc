import 'package:brgy_abella/utilities/constant.dart';
import 'package:brgy_abella/widgets/drawer.dart';
import 'package:brgy_abella/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: blue,
        iconTheme: const IconThemeData(color: white),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(20),
            Center(
              child: SizedBox(
                width: 300,
                child: AppTextField(
                  controller: searchController,
                  hintText: 'Search',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
