import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';

class SorahContentContainer extends StatelessWidget {
  const SorahContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323,
      height: 141,
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('اسم السورة',style: AppTextStyle.text15,),
              const SizedBox(width: 10,),
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/muslim (1) 1.png'))
                ),
                child: const Center(child: Text('1',textAlign: TextAlign.center,style: AppTextStyle.text14,)),
              ),
            ],
          ),
          const Text('نوع السورة',style: AppTextStyle.text13,),
          const Text('عدد الايات',style: AppTextStyle.text13,),
          const Text('الجزء',style: AppTextStyle.text13,),
        ],
      ),
    );
  }
}
