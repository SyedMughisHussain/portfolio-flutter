import 'package:flutter/material.dart';

import '../../../design/constants/app_String.dart';
import '../../../design/constants/app_images.dart';
import '../../../design/constants/utils/app_colors.dart';

class MobileAboutMe extends StatefulWidget {
  const MobileAboutMe({super.key});

  @override
  State<MobileAboutMe> createState() => _MobileAboutMeState();
}

class _MobileAboutMeState extends State<MobileAboutMe> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height,
      child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   alignment: Alignment.topLeft,
            //   child:

            Container(
              alignment: Alignment.topLeft,
              child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Preah'),
                      children: [
                        TextSpan(
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            text: AppStrings.aboutMeHeading)
                      ])),
            ),
            // Container(
            //   //margin: EdgeInsets.only(top: 20),
            //   child: const Text(
            //     AppStrings.aboutMeHeading,
            //     //textAlign: TextAlign.left,
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontFamily: 'Preah',
            //       fontWeight: FontWeight.bold,
            //       fontSize: 38,
            //     ),
            //   ),
            // ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    style: TextStyle(color: Colors.white, fontFamily: 'Preah'),
                    children: [TextSpan(text: AppStrings.aboutMeText)])),
            // Container(
            //   //margin: EdgeInsets.only(bottom: 200),
            //   child: const Text(
            //     AppStrings.aboutMeText,
            //     style: TextStyle(fontSize: 14),
            //   ),
            // ),
            const SizedBox(
              height: 10,
              child: Divider(
                height: 4,
                color: Colors.white,
              ),
            ),
            const Row(
              children: [
                Text(
                  AppStrings.aboutMeExperienceTime,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  AppStrings.aboutMeExperienceText,
                  style:
                      TextStyle(fontSize: 12, color: Colors.white, height: 1),
                ),
              ],
            ),
            //const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customContainer(AppImages.androidImage, 'ANDROID DEVELOPMENT',
                    AppColors.bgColor, 13, 15),
                const SizedBox(
                  height: 10,
                ),
                customContainer(AppImages.iosImage, 'IOS DEVELOPMENT',
                    AppColors.bgColor, 10, 35),
                const SizedBox(
                  height: 10,
                ),
                customContainer(AppImages.webImage, 'WEB DEVELOPMENT',
                    AppColors.bgColor, 10, 35),
                // const SizedBox(
                //   height: 15,
                // )
              ],
            ),
          ]),
    );
  }
}

Widget customContainer(String imageUrl, String text, Color bColor,
    double vertical, double horizontal) {
  return MouseRegion(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      decoration: BoxDecoration(
        color: bColor,
        border: Border.all(width: 1, color: Colors.white),
      ),
      //constraints: const BoxConstraints(maxHeight: 200, maxWidth: 350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            height: 30,
          ),
          const SizedBox(
            height: 15,
          ),
          FittedBox(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
