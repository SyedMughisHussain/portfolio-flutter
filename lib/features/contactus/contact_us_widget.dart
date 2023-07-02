import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/contactus/desktop_contact/desktop_contactme.dart';
import 'package:web_app/features/contactus/mobile_contact/mobile_contactme.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const DesktopContactMe();
      },
      mobile: (context) {
        return const MobileContactMe();
      },
      tablet: (context) {
        return const MobileContactMe();
      },
    );
  }
}
