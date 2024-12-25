import 'package:flutter/material.dart';
import 'package:space_memo/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class ColorConstants {
  static const primaryRedColor = Color(0xFFEE403D);
  static const primaryWhiteColor = Color(0xFFFFFFFF);
  static const primaryBlackColor = Color(0xFF0E0E0E);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceApp',
      home: Login(),
    );
  }
}
