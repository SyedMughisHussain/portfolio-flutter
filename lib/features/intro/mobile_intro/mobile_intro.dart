import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import '../../../design/constants/app_images.dart';
import '../../../design/constants/utils/app_colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

class MobileIntro extends StatelessWidget {
  const MobileIntro({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: w / 30),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // const Align(
            //   alignment: Alignment.bottomRight,
            //   child: RiveAnimation.asset(AppAnimations.introAnimation),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 130,
                ),
                const CircleAvatar(
                  radius: 68,
                  // backgroundImage: AssetImage(AppImages.selfImage),
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage(AppImages.selfImage),
                  ),
                ),
                const SizedBox(
                  width: 99,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontFamily: 'Preah',
                                fontSize: 25,
                                color: Colors.white),
                            children: [
                          //TextSpan(text: 'I am '),
                          TextSpan(
                              text: 'Syed Mughis Hussain',
                              style: TextStyle(color: AppColors.purple)),
                        ])),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            onTap: () => html.window.open(
                                'https://github.com/SyedMughisHussain', ''),
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
                              String email = Uri.encodeComponent(
                                  "syedmughis4541@gmail.com");
                              String subject =
                                  Uri.encodeComponent("Hello Flutter");
                              String body = Uri.encodeComponent(
                                  "Hi! I'm Flutter Developer");
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
                    const SizedBox(
                      height: 50,
                    ),
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Preah',
                                fontSize: 35,
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
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(height: 1.2),
                        children: [
                          TextSpan(
                              text: 'I\'am a Software Developer &\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Preah',
                                fontSize: 16,
                              )),
                          TextSpan(
                              text: 'a Tech Enthusiast ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Preah',
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Color.fromRGBO(255, 255, 0, 1),
                                  color: AppColors.navBarColor)),
                          TextSpan(
                              text: 'who loves sharing his coding journey!',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Preah',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ])),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ));
  }
}
