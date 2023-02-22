import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/screen_container.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: ScreenContainer(
          title: 'IOT Center',
          screen: Text('data', style: TextStyle(color: Colors.white, backgroundColor: Color(0xFFFFFFFF)))
      ));
  }
}