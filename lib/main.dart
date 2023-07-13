import 'package:flutter/material.dart';
import 'package:wp_design_clone/colors.dart';
import 'package:wp_design_clone/screens/mobile_screen_layout.dart';
import 'package:wp_design_clone/screens/web_screen_layout.dart';
import 'package:wp_design_clone/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
