import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:quran_app/Core/Utils/app_images.dart';
import 'package:quran_app/Features/Home/presentation/pages/home_screen.dart';
import '../../../../Core/Utils/app_size_config.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    getToHome();
  }

  void getToHome() {
    Future.delayed(
      const Duration(seconds: 7),
      () {
        Get.to(() => const HomeScreen(), transition: Transition.rightToLeft);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth,
          child: Image.asset(AppImages.background,fit: BoxFit.cover,),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.islam).animate().fadeIn(
                duration: const Duration(seconds: 2),
                delay: const Duration(seconds: 1)),
            Center(
              child: const Text(
                'اسلامى',
                style: TextStyle(
                  color: Color(0xFF02AA77),
                  fontSize: 40,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ).animate().fadeIn(
                  duration: const Duration(seconds: 2),
                  delay: const Duration(seconds: 1)),
            ),
          ],
        )
      ],
    );
  }
}
