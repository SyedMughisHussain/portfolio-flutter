import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/aboutme/desktopAboutMe/desktop_about_me_widget.dart';
import 'package:web_app/features/aboutme/mobileAboutMe/mobile_about_me_widget.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        // ignore: prefer_const_constructors
        desktop: (context) {
      return const DesktopAboutMe();
    }, mobile: (context) {
      return const MobileAboutMe();
    }, tablet: (context) {
      return const MobileAboutMe();
    });
  }
}
