import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/header.dart';
import 'package:iotapp/widgets/global/nav_bar.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({super.key, required this.widget, });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
      child: Stack(
        children: [
          const Header(text: 'IOT Cennter'),
          Container(
            child: widget,
          ),
          const NavBar()
        ]
      ),
    );
  }
}