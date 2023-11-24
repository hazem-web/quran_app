import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Features/QuranScreen/presentation/widgets/quran_screen_body.dart';
import 'package:icons_plus/icons_plus.dart';
class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_outlined,color: AppColors.appBarColor,),
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
