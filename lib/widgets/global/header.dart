import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key, required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.only(top: 30),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          text
          // style: TextStyle(
          //   color: 
          // ),
        ),
      )
    );
  }
}