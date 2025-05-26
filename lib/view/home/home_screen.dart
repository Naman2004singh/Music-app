import 'package:flutter/material.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/view/home/widgets/static_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: ListView(
        children: const [StaticContainer()],
      ),
    );
  }
}
