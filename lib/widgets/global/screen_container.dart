import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/header.dart';
import 'package:iotapp/widgets/global/nav_bar.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({ super.key, required this.screen, required this.title });

  final Widget screen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(text: title)
          ),
          Positioned(
            top: 80,
            bottom: 50,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 25, bottom: 25, right: 5, left: 5),
              child: screen,
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavBar()
          )
        ]
      ),
    );
  }
}