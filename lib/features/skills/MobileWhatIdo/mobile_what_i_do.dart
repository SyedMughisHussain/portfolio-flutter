import 'package:flutter/material.dart';

import '../../../design/constants/utils/app_colors.dart';

class MobileSkills extends StatefulWidget {
  const MobileSkills({super.key});

  @override
  State<MobileSkills> createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.bottomLeft,
      //margin: const EdgeInsets.only(top: 15),
      //alignment: Alignment.bottomLeft,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      child: Column(
        children: [
          Container(
            //alignment: Alignment.bottomLeft,
            //margin: const EdgeInsets.only(right: 980),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Skills',
                style: TextStyle(
                  fontFamily: 'Preah',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 15,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  customWidget('Flutter', '90%', 30),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Dart', '85%', 60),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Firebase', '80%', 70),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Git', '70%', 100),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Github', '80%', 70),
                  const SizedBox(
                    height: 10,
                  ),
                  // customWidget('State Management', '80%', 70),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                ],
              ),
              Column(
                children: [
                  customWidget('XML', '90%', 30),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Java', '85%', 60),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('Kotlin', '80%', 70),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('HTML', '70%', 100),
                  const SizedBox(
                    height: 10,
                  ),
                  customWidget('CSS', '80%', 70),
                  const SizedBox(
                    height: 10,
                  ),
                  // customWidget('JavaScipt', '65%', 150),
                  // const SizedBox(
                  //   height: 10,
                  // ),
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
