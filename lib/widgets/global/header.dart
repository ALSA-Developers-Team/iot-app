import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.subtitle, required this.type});
  final String title;
  final String subtitle;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle(type)["title"],
          ),
          Text(
            subtitle,
            style: titleStyle(type)["subtitle"],
          ),
        ],
      )
    );
  }
}

Map<String, TextStyle> titleStyle(String type) {
  if(type == 'header-1'){
    return {
      'title': TextStyle(
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
      'subtitle': TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.w300,             
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFD7B62),
                          Color(0xFFFB5A8C),
                        ],
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)), 
                  )
    };
  }
  if(type == 'header-2'){
    return {
      'title': const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white 
                ),
      'subtitle': const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                  )
    };
  }

  return const {};
}