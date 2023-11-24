import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran_app/Core/Utils/app_size_config.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';
import 'package:quran_app/Features/QuranScreen/presentation/pages/quran_screen.dart';
import 'package:quran_app/Features/Splash_Screen/Presentation/pages/splash_screen.dart';

class CustomContainerItems extends StatelessWidget {
  const CustomContainerItems({super.key, required this.text, required this.image});
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => Get.to(()=>const QuranScreen()),
      child: Container(
        width: SizeConfig.defaultSize!*18,
        height: SizeConfig.defaultSize!*17,
        decoration: ShapeDecoration(
          color: Colors.white,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
             Text(
               text,
               textAlign: TextAlign.center,
               style: AppTextStyle.amiriFont20
             ),
          ],
        ),
      ),
    );
  }
}
