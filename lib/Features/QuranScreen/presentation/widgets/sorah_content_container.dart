import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';
import '../../data/models/Surahdata.dart';

class SorahContentContainer extends StatelessWidget {
  const SorahContentContainer({super.key, required this.surahData});
final SurahData surahData;
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                surahData.revelationType=='Meccan'? Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/kaaba.png'))
                  ),
                ):Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/—Pngtree—madina sharif_6366069.png'),)
                  ),
                ),
                const Spacer(),
                Text(surahData.name??'',style: AppTextStyle.text15,),
                const SizedBox(width: 10,),
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/muslim (1) 1.png'))
                  ),
                  child:  Center(child: Text(surahData.number.toString(),textAlign: TextAlign.center,style: AppTextStyle.text14,)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(' عدد الايات :${surahData.numberOfAyahs??''}',style: AppTextStyle.text13,textDirection: TextDirection.rtl,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(' نوع السورة :${surahData.revelationType=='Meccan'?'مكية':'مدنية'}',style: AppTextStyle.text13,textDirection: TextDirection.rtl,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
