import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';

class AppTextStyle {
  static TextStyle amiriFont20 = GoogleFonts.amiri(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 0,
    color: AppColors.main,
  );

  static const text13 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    height: 0,
  );

  static const text14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static const text15 = TextStyle(
    color: AppColors.main,
    fontSize: 15,
    fontWeight: FontWeight.w900,
    height: 0,
  );
  static const text16 = TextStyle(
    color: AppColors.navIconColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static const text18 = TextStyle(
    color: AppColors.titleColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle interText12 = GoogleFonts.inter(
      color: const Color(0xFF02AA77),
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 0,
  );





}