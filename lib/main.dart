import 'package:flutter/material.dart';
import 'package:google_search/constants/colors.dart';
import 'package:google_search/responsive_layout/mobile_screen_layout.dart';
import 'package:google_search/responsive_layout/responsive_layout.dart';
import 'package:google_search/responsive_layout/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(backgroundColor: backgroundColor),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayoutScreen(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
