import 'package:flutter/material.dart';
import 'package:quran_app/Features/QuranScreen/presentation/widgets/sorah_content_container.dart';

import '../../../../Core/Utils/app_images.dart';
import '../../../../Core/Utils/app_size_config.dart';

class QuranScreenBody extends StatelessWidget {
  const QuranScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.background,),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 20,),
          itemBuilder: (context, index) {
          return const SorahContentContainer();
        },
          itemCount: 114,
        ),
      ),
    );
  }
}
