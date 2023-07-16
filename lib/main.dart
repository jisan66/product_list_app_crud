import 'package:flutter/material.dart';

import 'Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homescreen(),
      // theme: ThemeData(
      //     inputDecorationTheme:const InputDecorationTheme(
      //   border: const OutlineInputBorder(),
      // ))
    );
  }
}