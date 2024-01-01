import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran_app/Core/Utils/app_size_config.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';

class PrayersContainer extends StatelessWidget {
  const PrayersContainer({super.key, required this.pray, required this.prayerName, required this.currentTime, this.currentPrayer,});

  final DateTime pray;
  final String prayerName;

  final String currentTime;

  final  currentPrayer;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.defaultSize!*6,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        // gradient: const LinearGradient(
        //   begin: Alignment(-1.00, 0.00),
        //   end: Alignment(1, 0),
        //   colors: [Color(0xFF43B692), Color(0xEF099773)],
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19646464),
            blurRadius: 20,
            offset: Offset(0, 5),
            spreadRadius: 0,
          )
        ],
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              DateFormat.jm().format(pray),
            textAlign: TextAlign.center,
            style: AppTextStyle.amiriFont20.copyWith(color: Colors.black)
          ),
          const SizedBox(width: 178),
          Text(
            prayerName,
            textAlign: TextAlign.center,
            style: AppTextStyle.amiriFont20.copyWith(color: Colors.black)
          ),
        ],
      ),
    );
  }
}
