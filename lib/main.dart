import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive_layout.dart';
import 'package:whatsapp_clone/screens/desktop_screen.dart';
import 'package:whatsapp_clone/screens/mobile_screen.dart';
import 'package:whatsapp_clone/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp UI',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      home: const ResponsiveLayout(
          desktopScreenLayout: DesktopHomeScreen(),
          mobileScreenLayout: MobileHomeScreen()),
    );
  }
}
