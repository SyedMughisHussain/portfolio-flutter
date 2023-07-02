import 'package:flutter/material.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';

import 'features/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Syed Mughis Hussain 👋 Flutter Developer',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.purple,
        scaffoldBackgroundColor: AppColors.bgColor,
        fontFamily: "Preah",
      ),
      home: const Home(),
    );
  }
}
