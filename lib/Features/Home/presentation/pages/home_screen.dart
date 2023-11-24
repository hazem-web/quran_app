import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/presentation/widgets/custom_nav_bar.dart';
import 'package:quran_app/Features/Home/presentation/widgets/home_page_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageBody(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}


