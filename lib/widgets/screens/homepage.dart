import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/device_card.dart';
import 'package:iotapp/widgets/global/screen_container.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: ScreenContainer(
          title: 'IOT Center',
          subtitle: 'Welcome Back!',
          screen: DeviceCard()
      ));
  }
}