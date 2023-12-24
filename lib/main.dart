import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/Features/PrayerScreen/presentation/manager/location_cubit.dart';
import 'package:quran_app/Features/QuranScreen/data/data_sources/quran_remote_data.dart';
import 'package:quran_app/Features/QuranScreen/data/repositories/quran_repo_impl.dart';
import 'package:quran_app/Features/QuranScreen/presentation/manager/fetch_surahs_cubit.dart';
import 'package:quran_app/Features/Splash_Screen/Presentation/pages/splash_screen.dart';

import 'Core/Utils/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FetchSurahsCubit(QuranRepoImpl(QuranRemoteDataImpl(ApiService(Dio()))))..fetchSurahsData(),),
        BlocProvider(create: (context) => LocationCubit()..determinePosition(),),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quran',
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          useMaterial3: true,
        ),
        home: const SplashScreen()
      ),
    );
  }
}

