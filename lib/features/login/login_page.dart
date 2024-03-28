import 'package:brgy_abella/classes/database_helper.dart';
import 'package:brgy_abella/extensions/database_ext.dart';
import 'package:brgy_abella/features/home/home_page.dart';
import 'package:brgy_abella/main.dart';
import 'package:brgy_abella/widgets/button.dart';
import 'package:brgy_abella/widgets/snackbar.dart';
import 'package:brgy_abella/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController(text: 'jniedo');
  final passwordController = TextEditingController(text: 'admin');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              const Gap(50.0),
              Image.asset('assets/icon.ico'),
              AppTextField(
                controller: usernameController,
                hintText: 'Username',
              ),
              const Gap(10.0),
              AppTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const Gap(20.0),
              PrimaryButton(
                onTap: () async {
                  final database = await getIt<DatabaseHelper>().database;

                  final isValid = await database.login(usernameController.text, passwordController.text);

                  if (isValid) return routeToHomePage();

                  return showErrorMessage();
                },
                label: 'Login',
              )
            ],
          ),
        ),
      ),
    );
  }

  void routeToHomePage() => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );

  void showErrorMessage() => SnackBarHelper.showSnackBar(context, 'Incorrect Credentials');
}
