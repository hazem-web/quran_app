import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_images.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';
import 'package:quran_app/Core/widgets/background_image.dart';
import 'package:quran_app/Features/Home/presentation/widgets/custom_container_items.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اسلامى',
                  style: AppTextStyle.amiriFont20.copyWith(fontSize: 55),
                ),
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text('المطرية',textDirection: TextDirection.rtl,),
                     Icon(Icons.location_on_rounded,color: AppColors.main,),
                   ],
                 ),
                 const SizedBox(height: 20,),
                 const Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    CustomContainerItems(text: 'الاستماع',image: AppImages.istmah,),
                    CustomContainerItems(text: 'القران الكريم',image: AppImages.quran,),
                    CustomContainerItems(text: 'الاذكار',image: AppImages.pray,),
                    CustomContainerItems(text: 'ادعية',image: AppImages.doaa,),
                    CustomContainerItems(text: 'مواقت الصلاه',image: AppImages.time,),
                    CustomContainerItems(text: 'المسبحة',image: AppImages.sebah,),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
