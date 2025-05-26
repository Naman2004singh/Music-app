import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_textstyle.dart';
import 'package:music_app/utils/input_decoration.dart';

class StaticContainer extends StatelessWidget {
  const StaticContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.mainPadding, vertical: AppConstants.size30),
      height: AppConstants.screenHeight(context) * 0.4,
      decoration: const BoxDecoration(
        gradient: AppColors.homeGradient,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppConstants.borderRadius),
            bottomRight: Radius.circular(AppConstants.borderRadius)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: AppTextstyle.headlineMedium,
                  decoration: AppInputDecoration.textFieldDecoration(
                      hintText: "Search 'Punjabi Lyrics'",
                      prefixicon: Icons.search,
                      suffixIcon: Icons.mic_none),
                ),
              ),
              const SizedBox(width: AppConstants.size10),
              CircleAvatar(
                backgroundColor: AppColors.profileColor,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person)),
              )
            ],
          )
        ],
      ),
    );
  }
}
