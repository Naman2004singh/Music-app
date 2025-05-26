import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/repository/providers.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_textstyle.dart';

class MusicDetailScreen extends ConsumerWidget {
  const MusicDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedService = ref.watch(selectedServiceProvider);

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.whiteColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Music Service',
          style: AppTextstyle.headlineLarge,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.mainPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: AppConstants.size15),
              Text(
                'Selected Service:',
                style: AppTextstyle.headlineSmall.copyWith(
                  color: AppColors.whiteColor.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: AppConstants.size15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppConstants.mainPadding),
                decoration: BoxDecoration(
                  color: AppColors.lightDarkColor,
                  borderRadius:
                      BorderRadius.circular(AppConstants.borderRadius),
                ),
                child: Text(
                  selectedService ?? 'No service selected',
                  style: AppTextstyle.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
