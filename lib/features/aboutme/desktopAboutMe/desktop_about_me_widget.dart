import 'package:flutter/material.dart';
import 'package:web_app/design/constants/app_images.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';
import '../../../design/constants/app_String.dart';

class DesktopAboutMe extends StatefulWidget {
  const DesktopAboutMe({super.key});

  @override
  State<DesktopAboutMe> createState() => _DesktopAboutMeState();
}

class _DesktopAboutMeState extends State<DesktopAboutMe> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.aboutMeHeading,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Preah',
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            AppStrings.aboutMeText,
            style: TextStyle(fontSize: 18),
          ),
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
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(width: 20),
              Text(
                AppStrings.aboutMeExperienceText,
                style: TextStyle(fontSize: 22, color: Colors.white, height: 1),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customContainer(AppImages.androidImage, 'ANDROID DEVELOPMENT',
                  AppColors.bgColor, 60, 47),
              customContainer(AppImages.iosImage, 'IOS DEVELOPMENT',
                  AppColors.bgColor, 60, 75),
              customContainer(AppImages.webImage, 'WEB DEVELOPMENT',
                  AppColors.bgColor, 60, 75),
            ],
          ),
          // const SizedBox(
          //   height: 15,
          // )
        ],
      ),
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
        border: Border.all(width: 2, color: Colors.white),
      ),
      //constraints: const BoxConstraints(maxHeight: 200, maxWidth: 350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            height: 60,
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
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
