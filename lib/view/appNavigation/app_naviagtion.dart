import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/repository/providers.dart';
import 'package:music_app/view/appNavigation/widgets/custom_navigation.dart';
import 'package:music_app/view/home/home_screen.dart';
import 'package:music_app/view/news/news_screen.dart';
import 'package:music_app/view/projects/project_screen.dart';
import 'package:music_app/view/trackBox/trackbox_screen.dart';

class AppNaviagtion extends ConsumerWidget {
  const AppNaviagtion({super.key});

  final List<String> iconPaths = const [
    'assets/logo/homeIcon2.svg',
    'assets/logo/newsIcon.svg',
    'assets/logo/musicIcon.svg',
    'assets/logo/projectIcon.svg',
  ];

  final List<String> titles = const [
    'Home',
    'News',
    'Trackbox',
    'Projects',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationProvider);

    return PopScope(
        canPop: selectedIndex == 0,
        onPopInvokedWithResult: (didPop, result) async {
          if (!didPop && selectedIndex != 0) {
            ref.read(navigationProvider.notifier).update((state) => 0);
          }
        },
        child: Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: const [
              HomeScreen(),
              NewsScreen(),
              TrackboxScreen(),
              ProjectScreen()
            ],
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: selectedIndex,
            svgPaths: iconPaths,
            labels: titles,
            onTap: (index) {
              ref.read(navigationProvider.notifier).update((state) => index);
            },
          ),
        ));
  }
}
