import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_textstyle.dart';

class AppInputDecoration {
  static InputDecoration textFieldDecoration(
      {String? hintText, IconData? prefixicon, IconData? suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextstyle.bodyMedium,
      // for the color
      filled: true,
      fillColor: AppColors.searchBarcolor,
      prefixIcon: prefixicon != null
          ? Icon(
              prefixicon,
              size: 30.0,
              color: AppColors.whiteColor,
            )
          : null,
      suffixIcon: suffixIcon != null
          ? Icon(
              suffixIcon,
              size: 30.0,
              color: AppColors.whiteColor,
            )
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: const BorderSide(color: AppColors.borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: const BorderSide(color: AppColors.borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: const BorderSide(color: AppColors.whiteColor, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: const BorderSide(color: AppColors.redColor),
      ),
    );
  }
}
