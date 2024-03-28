import 'dart:io';

import 'package:brgy_abella/classes/database_helper.dart';
import 'package:brgy_abella/features/login/login_page.dart';
import 'package:brgy_abella/utilities/constant.dart';
import 'package:brgy_abella/utilities/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:window_manager/window_manager.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows) sqfliteFfiInit();

  databaseFactory = databaseFactoryFfi;
  getIt.registerSingleton<DatabaseHelper>(DatabaseHelper(), signalsReady: true);
  await getIt<DatabaseHelper>().database;

  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    minimumSize: Size(800, 600),
    maximumSize: Size(800, 600),
    center: true,
    title: appName,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: BCPCTheme.buildTheme,
    home: const LoginPage(),
  ));
}
