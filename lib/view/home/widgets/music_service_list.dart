import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_textstyle.dart';

class MusicServiceList extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String logoUrl;
  const MusicServiceList(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppConstants.mainPadding, vertical: 8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            AppColors.lightDarkColor,
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: ListTile(
        leading: SvgPicture.asset(logoUrl),
        title: Text(
          title,
          style: AppTextstyle.headlineLarge,
        ),
        subtitle: Text(
          description,
          style: AppTextstyle.headlineExtraSmall,
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor),
      ),
    );
  }
}
