import 'package:flutter/material.dart';
import 'package:iotapp/widgets/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF12142D)
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

