import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_strings.dart';
import 'package:music_app/utils/app_textstyle.dart';
import 'package:music_app/utils/input_decoration.dart';
import 'package:music_app/view/home/widgets/book_now_button.dart';

class StaticContainer extends StatelessWidget {
  const StaticContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.mainPadding,
              vertical: AppConstants.size30),
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
              ),
              SizedBox(
                height: AppConstants.screenHeight(context) * 0.05,
              ),
              const Text(
                AppStrings.text01,
                style: AppTextstyle.headlineLarge,
              ),
              const Text(
                AppStrings.text02,
                style: AppTextstyle.newStyle,
              ),
              const Text(
                AppStrings.text03,
                style: AppTextstyle.headlineMedium,
              ),
              const SizedBox(height: AppConstants.size20),
              const BookNowButton()
            ],
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: -30.0,
          child: SvgPicture.asset(
            "assets/images/musicPlayer.svg",
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: -30.0,
          child: SvgPicture.asset(
            "assets/images/musicKeyboard.svg",
          ),
        ),
      ],
    );
  }
}
