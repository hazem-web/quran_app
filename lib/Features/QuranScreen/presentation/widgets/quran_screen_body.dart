import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/Core/Utils/app_colors.dart';
import 'package:quran_app/Features/QuranScreen/presentation/widgets/sorah_content_container.dart';
import '../../../../Core/Utils/app_images.dart';
import '../manager/fetch_surahs_cubit.dart';
class QuranScreenBody extends StatelessWidget {
  const QuranScreenBody({super.key,});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.background,),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: BlocBuilder<FetchSurahsCubit, FetchSurahsState>(
  builder: (context, state) {
    if (state is FetchSurahsLoading) {
      return const Center(child: CircularProgressIndicator(color: AppColors.main,));
    }
    else if(state is FetchSurahsSuccess){
      return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemBuilder: (context, index) {
          return SorahContentContainer(surahData: state.surahs[index],);
        },
        itemCount:state.surahs.length ,
      );
    }
    else{
      return Container(width: 150,height: 50,color: Colors.red,child: const Text('There is an error',style: TextStyle(color: Colors.white),),);
    }

  },
),
      ),
    );
  }
}
