import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key, required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 55,
                fontWeight: FontWeight.w900,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFD7B62),
                      Color(0xFFFB5A8C),
                    ],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)), 
              ),
              textScaleFactor: 1.0,
            ),
          ],
        ),
      )
    );
  }
}