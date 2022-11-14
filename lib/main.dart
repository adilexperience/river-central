import 'package:flutter/material.dart';
import 'package:river_central/controllers/app_colors.dart';
import 'package:river_central/views/dashboard/bottom_navigation_binder_with_screens.dart';
import 'package:river_central/views/dashboard/dashboard.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.createMaterialColor(AppColors.primary),
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: Routes.dashboard,
      routes: {
        Routes.initial: (context) => Splash(),
        Routes.dashboard: (context) => Dashboard(
              screen: BottomNavigationBinderWithScreens(),
            ),
      },
    );
  }
}
