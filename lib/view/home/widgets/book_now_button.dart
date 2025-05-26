import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_textstyle.dart';
import 'package:music_app/utils/flush_bar_helper.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FlushBarHelper.flushBarSuccessMessage('Booking successful!', context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text('Book Now', style: AppTextstyle.bodyLarge),
      ),
    );
  }
}
