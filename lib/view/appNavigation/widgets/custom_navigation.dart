import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/utils/app_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> svgPaths;
  final List<String> labels;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.svgPaths,
    required this.labels,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppConstants.borderRadius),
            topRight: Radius.circular(AppConstants.borderRadius)),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGreyColor.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Arrow indicator
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: (MediaQuery.of(context).size.width / svgPaths.length) *
                    selectedIndex +
                (MediaQuery.of(context).size.width / svgPaths.length) / 2 -
                15, // Center the arrow
            top: 0,
            child: Container(
              width: 12,
              height: 6,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
              ),
            ),
          ),
          // Navigation items
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                svgPaths.length,
                (index) => GestureDetector(
                  onTap: () => onTap(index),
                  behavior: HitTestBehavior.opaque,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    transform: Matrix4.identity()
                      ..translate(0.0, selectedIndex == index ? -2.0 : 0.0),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // SVG Icon
                        SvgPicture.asset(
                          svgPaths[index],
                          width: 24,
                          height: 24,
                          colorFilter: ColorFilter.mode(
                            selectedIndex == index
                                ? AppColors.whiteColor
                                : AppColors.lightGreyColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Label
                        Text(
                          labels[index],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: selectedIndex == index
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: selectedIndex == index
                                ? AppColors.whiteColor
                                : AppColors.lightGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
