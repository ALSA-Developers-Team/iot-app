import 'package:flutter/material.dart';
import 'package:iotapp/widgets/global/header.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({super.key});

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 3),
      height: 150,
      width: 165,
      decoration: BoxDecoration(
        color: const Color(0xFF12142D).withOpacity(0.99),
        boxShadow: const [
          BoxShadow(
            color:  Color(0xFF697ADF),
            blurRadius: 25,
            spreadRadius: -10.0,
            offset: Offset(9, 9)
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset("lib/assets/card/temperature.png")
              ),
              const Header(title: 'Temperature', subtitle: 'General', type: 'header-2',)
            ],
          ),
        ],
      ),
    );
  }
}