import 'package:flutter/material.dart';
import 'package:speed_code_plant_app/pages/home_page.dart';
import 'package:speed_code_plant_app/theme/theme_data.dart';

import 'theme/app_colors.dart';
import 'theme/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speed Code Plant App',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeData,
      home: const HomePage(),
    );
  }
}
