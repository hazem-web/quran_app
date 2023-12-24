import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/Features/Home/presentation/widgets/home_page_body.dart';
import 'package:quran_app/Features/QuranScreen/presentation/pages/quran_screen.dart';
import '../../../../Core/Utils/app_colors.dart';
import '../../../../Core/Utils/app_images.dart';
import '../../../../Core/Utils/app_text_style.dart';
import '../../../PrayerScreen/presentation/pages/prayer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        pageSnapping: true,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        controller: pageController,
        children: const [
          HomePageBody(),
          QuranScreen(),
          PrayerScreen(),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        showUnselectedLabels: false,
        selectedLabelStyle: AppTextStyle.interText12.copyWith(fontWeight: FontWeight.w900,color: AppColors.main),
        onTap: (value) {
          setState(() {
            pageController.jumpToPage(value);
          });
        },
        backgroundColor: Colors.white,
        elevation: 15,
        iconSize: 30,
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color:AppColors.navIconColor ,),label: 'Home'),
          BottomNavigationBarItem(icon:SvgPicture.asset(AppImages.quran1),label: 'Quran'),
          BottomNavigationBarItem(icon: Image.asset(AppImages.mosque),label: 'Time'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.doaa2),label: 'Doaa'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.prayer1),label: 'Azkar'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.tasbih),label: 'Sebah'),
        ],
      ),
    );
  }
}


