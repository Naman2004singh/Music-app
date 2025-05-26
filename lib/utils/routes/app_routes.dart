import 'package:flutter/material.dart';
import 'package:music_app/utils/routes/routes_name.dart';
import 'package:music_app/view/appNavigation/app_naviagtion.dart';
import 'package:music_app/view/home/home_screen.dart';
import 'package:music_app/view/home/widgets/music_detail_screen.dart';
import 'package:music_app/view/news/news_screen.dart';
import 'package:music_app/view/projects/project_screen.dart';
import 'package:music_app/view/trackBox/trackbox_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings setting){
    switch (setting.name){
      //homeScreen
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
      //newsScreen
      case RoutesName.newsScreen:
        return MaterialPageRoute(builder: (context) => const NewsScreen(),);
      //projectScreen
      case RoutesName.projectScreen:
        return MaterialPageRoute(builder: (context) => const ProjectScreen(),);
      //trackboxScreen
      case RoutesName.trackboxScreen:
        return MaterialPageRoute(builder: (context) => const TrackboxScreen(),);
      //navigationScreen
      case RoutesName.navigationScreen:
        return MaterialPageRoute(builder: (context) => const AppNaviagtion(),);
      //musicDetailScreen
      case RoutesName.musicDetailScreen:
        return MaterialPageRoute(builder: (context) => const MusicDetailScreen(),); 
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("No routes generated"),
              ),
            );
          },
        );
      
    }
  }
}