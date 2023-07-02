import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/projects/desktopprojects/desktop_projects_widget.dart';
import 'mobileprojects/mobile_projects_widget.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const DesktopProjects();
      },
      mobile: (context) {
        return const MobileProjects();
      },
      tablet: (context) {
        return const MobileProjects();
      },
    );
  }
}
