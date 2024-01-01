import 'package:flutter/cupertino.dart';

import '../../../../Core/Utils/app_size_config.dart';
import 'prayers_container.dart';

class PrayTimes extends StatelessWidget {
  const PrayTimes({
    super.key,
    required this.prayTimes,
    required this.prayerNames, required this.currentTime, this.currentPrayer,
  });

  final List<DateTime> prayTimes;
  final List<String> prayerNames;
  final String currentTime;

  final currentPrayer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SizeConfig.defaultSize!*55,
        child: ListView.builder(itemBuilder: (context, index) => PrayersContainer(pray: prayTimes[index], prayerName: prayerNames[index], currentTime: currentTime,currentPrayer: currentPrayer,) ,itemCount: prayTimes.length,));
  }
}