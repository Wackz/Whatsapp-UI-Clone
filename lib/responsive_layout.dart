import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget desktopScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.desktopScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 900) {
        return desktopScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
