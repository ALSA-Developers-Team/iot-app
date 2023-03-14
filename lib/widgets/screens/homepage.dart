import 'package:flutter/material.dart';
import 'package:iotapp/models/screen_data.dart';
import 'package:get/get.dart';
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
      final ScreenData screenData = Get.put(ScreenData(context));

      return Scaffold(
        body: ScreenContainer(
          title: 'IOT Center',
          subtitle: 'Welcome Back!',
          screen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              DeviceCard(isSmall: true, title: 'Temperature', subtitle: 'General', value: '30'),
              //DeviceCard(isSmall: true, title: 'Temperature', subtitle: 'General', value: '30'),
            ]
          )
      ));
  }
}