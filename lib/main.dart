import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sadece İyilik Sağlık',
      theme: ThemeData(
        primaryColor: const Color(0xFF685BFF),
        hintColor: const Color(0xFFED8C42),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF685BFF),
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
