
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Core/Utils/app_text_style.dart';
import '../../../../Core/Utils/app_images.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: AppColors.navIconColor,
      selectedLabelStyle: AppTextStyle.interText12.copyWith(fontWeight: FontWeight.w900),
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      elevation: 15,
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.quran1,),label: 'Home',),
        BottomNavigationBarItem(icon:Image.asset(AppImages.mosque),label: 'Pray'),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.doaa2),label: 'Doaa'),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.prayer1),label: 'أذكار'),
        BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.tasbih),label: 'تسبيح'),
      ],
    );
  }
}