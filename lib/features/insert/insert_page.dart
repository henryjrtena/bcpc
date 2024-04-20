import 'package:brgy_abella/utilities/constant.dart';
import 'package:brgy_abella/widgets/drawer.dart';
import 'package:brgy_abella/widgets/sex.dart';
import 'package:brgy_abella/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

class InsertPage extends StatefulWidget {
  const InsertPage({super.key});

  @override
  State<InsertPage> createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  final firstName = TextEditingController();
  final middleName = TextEditingController();
  final lastname = TextEditingController();
  final ageController = TextEditingController();

  String birthdate = "Birthday";

  List<DateTime?> dates = [DateTime.now()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 150.0,
                  child: AppTextField(
                    controller: firstName,
                    hintText: 'First Name',
                  ),
                ),
                const Gap(5.0),
                SizedBox(
                  width: 150.0,
                  child: AppTextField(
                    controller: middleName,
                    hintText: 'Middle Name',
                  ),
                ),
                const Gap(5.0),
                SizedBox(
                  width: 150.0,
                  child: AppTextField(
                    controller: lastname,
                    hintText: 'Last Name',
                  ),
                ),
                const Gap(5.0),
                SizedBox(
                  width: 100.0,
                  child: AppTextField(
                    controller: ageController,
                    hintText: 'Age',
                  ),
                ),
                const Gap(5.0),
                SexDropDown(
                  label: "Sex",
                  initialValue: -1,
                  onChanged: (int value) {},
                ),
              ],
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () async {
                      final date = await showDatePickerDialog(
                        context: context,
                        minDate: DateTime(2021, 1, 1),
                        maxDate: DateTime(2023, 12, 31),
                      );

                      setState(() {
                        birthdate = date.toString();
                      });
                    },
                    child: Text(birthdate))
              ],
            )
            // AppTextField(
            //   controller: nameController,
            //   hintText: 'Birthdate',
            // ),
            // AppTextField(
            //   controller: nameController,
            //   hintText: 'Birth Registered',
            // )
          ],
        ),
      ),
    );
  }
}
