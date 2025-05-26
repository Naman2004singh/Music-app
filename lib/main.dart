import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/utils/routes/app_routes.dart';
import 'package:music_app/utils/routes/routes_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCeiZWaMYzQAIDfQLZOAdljpZ94_A9JBHI",
            authDomain: "music-app-375b1.firebaseapp.com",
            projectId: "music-app-375b1",
            storageBucket: "music-app-375b1.firebasestorage.app",
            messagingSenderId: "238661659981",
            appId: "1:238661659981:web:267a77b55b2ab4e5629b04",
            measurementId: "G-1LZ7S31V6Q"));
  } else {
    //for using the google fonts durig the loading of the app
    // GoogleFonts.config.allowRuntimeFetching = false;
    await Firebase.initializeApp();
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.navigationScreen,
      onGenerateRoute: AppRoutes.generateRoutes,
    );
  }
}
