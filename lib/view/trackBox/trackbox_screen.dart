import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_textstyle.dart';

class TrackboxScreen extends StatelessWidget {
  const TrackboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: Text('Trackbox Screen', style: AppTextstyle.newStyle),
      ),
    );
  }
}
