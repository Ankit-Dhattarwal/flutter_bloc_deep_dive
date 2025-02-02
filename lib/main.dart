
import 'package:flutter/material.dart';
import 'package:flutter_deep_dive_bloc_with_project/login-form-validation/login_screen.dart';

import 'app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
