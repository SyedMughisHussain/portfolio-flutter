import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/design/constants/app_images.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';
import '../../../design/constants/app_animation.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter_social_button/flutter_social_button.dart';

class DesktopIntro extends StatefulWidget {
  const DesktopIntro({super.key});

  @override
  State<DesktopIntro> createState() => _DesktopIntroState();
}

class _DesktopIntroState extends State<DesktopIntro> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: w / 30),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.bottomRight,
              child: RiveAnimation.asset(AppAnimations.introAnimation),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: w / 14 - 4,
                      backgroundImage: const AssetImage(AppImages.selfImage),
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 99,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Preah',
                                    fontSize: 35,
                                    color: Colors.white),
                                children: [
                              TextSpan(text: 'I am '),
                              TextSpan(
                                  text: 'Syed Mughis Hussain',
                                  style: TextStyle(color: AppColors.purple)),
                            ])),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    height: 1.2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Preah',
                                    fontSize: 60,
                                    color: Colors.white),
                                children: [
                              TextSpan(
                                  text: 'Crafting code to bring\n',
                                  style: TextStyle()),
                              TextSpan(text: 'Ideas to '),
                              TextSpan(
                                  text: 'Life...',
                                  style: TextStyle(color: AppColors.purple)),
                            ])),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(height: 1.2),
                        children: [
                      TextSpan(
                          text: 'I\'am a Software Developer &\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Preah',
                            fontSize: 40,
                          )),
                      TextSpan(
                          text: 'a Tech Enthusiast ',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Preah',
                              fontWeight: FontWeight.bold,
                              backgroundColor: Color.fromRGBO(255, 255, 0, 1),
                              color: AppColors.navBarColor)),
                      TextSpan(
                          text: 'who loves sharing his coding journey!',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Preah',
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ])),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Row(
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
                        onTap: () => html.window.open(
                            'https://www.facebook.com/syed.mugheez.5', ''),
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
                          Uri mail = Uri.parse(
                              "mailto:$email?subject=$subject&body=$body");
                          if (await launchUrl(mail)) {
                          } else {}
                        },
                        mini: true,
                        iconColor: Colors.white,
                        buttonType: ButtonType.email,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
