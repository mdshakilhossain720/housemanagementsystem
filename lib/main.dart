import 'package:flutter/material.dart';

import 'viewscreen/onboarding/splash_scrren.dart';
import 'viewscreen/pageview/page_view_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Management System',
      home: SplashScreen(),
    );
  }
}

