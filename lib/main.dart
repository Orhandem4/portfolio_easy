import 'package:flutter/material.dart';
import 'package:portfolio_easy/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Orhan Portfolio',
      home: const HomePage(),
    );
  }
}

