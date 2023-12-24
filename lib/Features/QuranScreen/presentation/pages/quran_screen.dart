import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Features/Home/presentation/pages/home_screen.dart';
import 'package:quran_app/Features/QuranScreen/presentation/widgets/quran_screen_body.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon:const Icon(Icons.arrow_back_outlined),color: AppColors.appBarColor, onPressed: () {
          Get.to(()=>const HomeScreen());
        },),
        title: const Text('Quran'),
        centerTitle: true,
        actions:  const [
          Icon(Icons.settings_outlined),
          Icon(Icons.more_horiz),
        ],
      ),
      body: const QuranScreenBody(),
    );
  }
}
