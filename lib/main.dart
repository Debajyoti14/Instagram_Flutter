import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/utils/colors.dart';

import 'responsive/mobile_screen_layout.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyA2GFm3eSOH382Hn8tyJCqKsgpGRQay0z4',
          appId: '1:607164478582:web:bdd20dabc32888d17d5b57',
          messagingSenderId: '607164478582',
          projectId: 'instagram-flutter-dd43d',
          storageBucket: 'instagram-flutter-dd43d.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram-flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayoutScreen(
      //   webScreenlayout: WebScreenLayout(),
      //   mobileScreenlayout: MobileScreenLayout(),
      // ),
      home: const LoginScreen(),
    );
  }
}
