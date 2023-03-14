import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/screen_data.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenData screenData = Get.find();

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: screenData.screenWidth * .85,
        height: screenData.heightAspectRatio * 0.45,
        alignment: Alignment.center,
        padding: EdgeInsets.only(right: screenData.screenWidth * 0.08, left: screenData.screenWidth * 0.08),
        decoration: BoxDecoration(
          color: const Color(0xFFFD7B62),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFD7B62),
              Color(0xFFFB5A8C),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color:  Color(0xFF697ADF),
              blurRadius: 20,
              spreadRadius: -20.0,
              offset: Offset(0, 20)
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Screen1()),
                // );
              },
              child: Image.asset("lib/assets/navbar/home.png"),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Screen2()),
                // );
              },
              child: Image.asset("lib/assets/navbar/metrics.png"),
            ),
                        GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Screen2()),
                // );
              },
              child: Image.asset("lib/assets/navbar/notifications.png"),
            ),
                        GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Screen2()),
                // );
              },
              child: Image.asset("lib/assets/navbar/settings.png"),
            ),
          ],
        ),
      ),
    );
  }
}