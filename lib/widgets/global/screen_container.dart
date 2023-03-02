import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/header.dart';
import 'package:iotapp/widgets/global/nav_bar.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({ super.key, required this.screen, required this.title, required this.subtitle });

  final Widget screen;
  final String title;
  final String subtitle;

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
            child: Header(title: title, subtitle: subtitle, type: 'header-1',)
          ),
          Positioned(
            top: 120,
            bottom: 50,
            left: 0,
            right: 0,
            child: SingleChildScrollView(            
              padding: const EdgeInsets.only(top: 15, bottom: 25, right: 5, left: 5),
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