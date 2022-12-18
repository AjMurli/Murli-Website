import 'package:flutter/material.dart';
import 'package:responsive_landing_page/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Murli Website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Aj'),
      home: HomeScreen(),
    );
  }
}
