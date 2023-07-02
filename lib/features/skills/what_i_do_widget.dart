import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/skills/MobileWhatIdo/mobile_what_i_do.dart';
import 'package:web_app/features/skills/desktopWhatIdo/desktop_what_ido.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const DesktopSkills();
      },
      mobile: (context) {
        return const MobileSkills();
      },
      tablet: (context) {
        return const MobileSkills();
      },
    );
  }
}
