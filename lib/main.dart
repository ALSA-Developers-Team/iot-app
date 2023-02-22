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
    TextStyle montserratFont = const TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.normal
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF12142D)
      ),
      home: DefaultTextStyle(
        style: montserratFont,
        child: const HomePage()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

