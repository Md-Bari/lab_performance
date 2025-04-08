import 'package:flutter/material.dart';
import 'package:lab_performance/home/home_page.dart';

void main() {
  runApp(MyDriveApp());
}

class MyDriveApp extends StatelessWidget {
  const MyDriveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Dark theme to match UI
      home: DriveHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
