import 'package:flutter/material.dart';
import 'package:pet/Screens/Splach.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFA074E7),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xffd8ecf1),
        ),
        scaffoldBackgroundColor: const Color(0xfff3f5f7),
      ),
      home: const Splach(),
    );
  }
}
