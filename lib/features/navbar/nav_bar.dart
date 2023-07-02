import 'package:flutter/material.dart';
// import 'package:marquee/marquee.dart';
// import 'package:web_app/design/widget/app_marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:web_app/features/intro/desktop_intro.dart/desktop_intro.dart';
import 'package:web_app/features/navbar/dekstop/desktop_nav_bar.dart';
import 'package:web_app/features/navbar/mobile/mobile_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const DesktopNavbar(),
      tablet: (p0) => const MobileNavBar(),
      mobile: (p0) => const MobileNavBar(),
    );
  }
}
