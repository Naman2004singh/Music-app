import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/repository/music_model.dart';
import 'package:music_app/repository/providers.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_textstyle.dart';
import 'package:music_app/utils/routes/routes_name.dart';

class MusicServiceList extends ConsumerWidget {
  final MusicModel musicModel;

  const MusicServiceList({
    super.key,
    required this.musicModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppConstants.mainPadding, vertical: 8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(musicModel.imageUrl),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            AppColors.lightDarkColor,
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: ListTile(
        leading: SvgPicture.asset(musicModel.logoUrl),
        title: Text(
          musicModel.title,
          style: AppTextstyle.headlineLarge,
        ),
        subtitle: Text(
          musicModel.description,
          style: AppTextstyle.headlineExtraSmall,
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor),
            onTap: () => _onServiceTap(context, ref),
      ),
    );
  }

  void _onServiceTap(BuildContext context, WidgetRef ref) {
    ref.read(selectedServiceProvider.notifier).state = musicModel.title;

    // Navigate to detail screen
    Navigator.pushNamed(
      context,
      RoutesName.musicDetailScreen,
    );
  }
}
