import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 319.83,
        height: 78,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 30, left: 30),
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
              color:  Colors.grey,
              blurRadius: 12,
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