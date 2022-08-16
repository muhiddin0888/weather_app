import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HourlyTime extends StatelessWidget {
  const HourlyTime({super.key, required this.time});
  final int time;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.MMMEd()
          .format(DateTime.fromMillisecondsSinceEpoch(time * 1000))
          .toString(),
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }
}
