import 'package:flutter/material.dart';
import 'package:iotapp/models/screen_data.dart';
import 'package:iotapp/widgets/global/header.dart';
import 'package:get/get.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({Key? key, 
                    required this.isSmall, 
                    this.optionalWidget,
                    required this.title, 
                    required this.subtitle, 
                    required this.value}) : super(key: key);
  final bool isSmall;
  final bool? optionalWidget;
  final String title;
  final String subtitle;
  final String value;

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    final ScreenData screenData = Get.find();

    return Container(
      padding: EdgeInsets.only(left: screenData.screenWidth * 0.03, right: screenData.screenWidth * 0.03),
      height: screenData.heightAspectRatio * 0.85 ,
      width: widget.isSmall ? screenData.screenWidth * .425 : screenData.screenWidth * .9,
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
      child: Row(
        mainAxisAlignment: widget.isSmall ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: screenData.heightAspectRatio * 0.1, right: screenData.screenWidth * 0.03),
                    child: Transform.scale(
                      scale: screenData.screenWidth * 0.0035,
                      child: Image.asset('lib/assets/card/temperature.png'),
                    )
                  ),
                  Header(title: widget.title, subtitle: widget.subtitle, type: 'header-2',),
                ]
              ),
              SizedBox(
                height: screenData.heightAspectRatio * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.value,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenData.screenWidth * 0.17,
                      fontWeight: FontWeight.w900,
                      color: Colors.white 
                    ),
                  )
                ],
              )
            ],
          ),
          

        ],
      ),
    );
  }
}