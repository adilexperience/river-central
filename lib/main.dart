import 'package:flutter/material.dart';
import 'package:river_central/controllers/app_colors.dart';
import 'package:river_central/views/dashboard.dart';
import 'package:river_central/views/routes/routes.dart';
import 'package:river_central/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'River Central',
      theme: ThemeData(
        primarySwatch: AppColors.createMaterialColor(AppColors.primary),
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: Routes.dashboard,
      routes: {
        Routes.initial: (context) => Splash(),
        Routes.dashboard: (context) => Dashboard(),
      },
    );
  }
}
