import 'package:flutter/material.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';

class DesktopSkills extends StatefulWidget {
  const DesktopSkills({super.key});

  @override
  State<DesktopSkills> createState() => _DesktopSkillsState();
}

class _DesktopSkillsState extends State<DesktopSkills> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.only(top: 15),
      //alignment: Alignment.bottomLeft,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      child: Column(
        children: [
          Container(
            //alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(right: 980),
            child: const Text(
              'Skills',
              style: TextStyle(
                fontFamily: 'Preah',
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  customWidget('Flutter', '90%', 30),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Dart', '85%', 60),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Firebase', '80%', 70),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Git', '70%', 100),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Github', '80%', 70),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('State Management', '80%', 70),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
              Column(
                children: [
                  customWidget('XML', '90%', 30),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Java', '85%', 60),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('Kotlin', '80%', 70),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('HTML', '70%', 100),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('CSS', '80%', 70),
                  const SizedBox(
                    height: 35,
                  ),
                  customWidget('JavaScipt', '65%', 150),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget customWidget(String skillName, String skillExpertise, double padding) {
  return SizedBox(
    height: 45,
    width: 500,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skillName,
              style: const TextStyle(fontSize: 13),
            ),
            Text(
              skillExpertise,
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(right: padding),
          height: 20,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Colors.white,
          ),
          child: Container(
            height: 20,
            width: 500,
            decoration: const BoxDecoration(
              color: AppColors.purpleDark,
            ),
            //color: Colors.white,
            padding: EdgeInsets.only(right: padding),
          ),
        ),
      ],
    ),
  );
}
