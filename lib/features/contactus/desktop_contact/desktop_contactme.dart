import 'package:flutter/material.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

class DesktopContactMe extends StatefulWidget {
  const DesktopContactMe({super.key});

  @override
  State<DesktopContactMe> createState() => _DesktopContactMeState();
}

class _DesktopContactMeState extends State<DesktopContactMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 1100,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'If you are a student, enterpreneur or just want to chat with me, drop me an interesting mail at 👇\n',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const Text(
            'syedmughis4541@gmail.com',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.purple,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              FlutterSocialButton(
                onTap: () => html.window.open(
                    'https://www.linkedin.com/in/syed-mughis-hussain-ab420a239/',
                    ''),
                mini: true,
                iconColor: Colors.white,
                buttonType: ButtonType.linkedin,
              ),
              FlutterSocialButton(
                onTap: () => html.window
                    .open('https://github.com/SyedMughisHussain', ''),
                mini: true,
                iconColor: Colors.white,
                buttonType: ButtonType.github,
              ),
              FlutterSocialButton(
                onTap: () => html.window
                    .open('https://www.facebook.com/syed.mugheez.5', ''),
                mini: true,
                iconColor: Colors.white,
                buttonType: ButtonType.facebook,
              ),
              FlutterSocialButton(
                onTap: () async {
                  String email =
                      Uri.encodeComponent("syedmughis4541@gmail.com");
                  String subject = Uri.encodeComponent("Hello Flutter");
                  String body =
                      Uri.encodeComponent("Hi! I'm Flutter Developer");
                  Uri mail =
                      Uri.parse("mailto:$email?subject=$subject&body=$body");
                  if (await launchUrl(mail)) {
                  } else {}
                },
                mini: true,
                iconColor: Colors.white,
                buttonType: ButtonType.email,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.white,
            height: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Coded by Syed Mughis Hussain with ❤ in Pakistan',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
