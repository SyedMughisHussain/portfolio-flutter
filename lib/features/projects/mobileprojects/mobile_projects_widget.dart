import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../../design/constants/utils/app_colors.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({super.key});

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //alignment: Alignment.topLeft,
      //height: MediaQuery.of(context).size.height,
      //padding: EdgeInsets.symmetric(horizontal: w / 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            //textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          container(
              'Meals App',
              'Meals app made with flutter framework.',
              'assets/images/meals.png',
              'https://github.com/SyedMughisHussain/meals_app',
              'Meals app consist of UI.In this app user can see food meals acoording to their expense and time making process and als0 they mark meals as a favourite and see again and again easily.',
              const Color.fromARGB(255, 193, 242, 195),
              const Color.fromARGB(255, 242, 178, 174),
              const Color.fromARGB(255, 235, 192, 242),
              'UI',
              'Routes'),
          container2(
              'Todo App',
              'Todo App made with flutter framework.',
              'assets/images/todo.png',
              'https://github.com/SyedMughisHussain/todoApp',
              'Todo app consists of CRUD opearation like create, read, update and delete using sqlite database.User can make a daily todo list to increase their productivity and do work in a given time.',
              const Color.fromARGB(255, 17, 227, 24),
              const Color.fromARGB(255, 17, 227, 24),
              const Color.fromARGB(255, 9, 134, 236),
              'CRUD',
              'Sqlite'),
          container(
              'Shop App',
              'Shop app made with flutter framework.',
              'assets/images/shop.png',
              'https://github.com/SyedMughisHussain/shop-app',
              'Shop app consist of forntend and a backend, frontend made with flutter and backend with frebase(BaaS), app consist of some features, like user authentication, Http request, error handling, Ui Design and much more.',
              const Color.fromARGB(255, 5, 163, 236),
              const Color.fromARGB(255, 5, 163, 236),
              const Color.fromARGB(255, 218, 116, 236),
              'Firebase',
              'RESTful Apis')
        ],
      ),
    );
  }
}

Widget container(
    String appName,
    String des1,
    String url,
    String githubUrl,
    String des2,
    Color color1,
    Color color2,
    Color color3,
    String featured1,
    String featured2) {
  return Container(
    alignment: Alignment.topLeft,
    //padding: const EdgeInsets.all(30),
    height: 450,
    width: 1100,
    //decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Column(
      children: [
        // const SizedBox(
        //   width: 15,
        // ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 10),
          height: 250,
          width: 470,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Featured Project',
                //textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                appName,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 550,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: AppColors.purpleDark,
                ),
                alignment: Alignment.topRight,
                child: Text(
                  des2,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Dart'),
                  const Text('Flutter'),
                  Text(featured1),
                  Text(featured2),
                ],
              ),
              // FlutterSocialButton(
              //   onTap: () => html.window.open(githubUrl, ''),
              //   buttonType: ButtonType.github,
              //   iconColor: Colors.white,
              //   mini: true,
              // ),
              // Container(
              //   alignment: Alignment.topRight,
              //   child: IconButton(
              //       onPressed: () => html.window.open(githubUrl, ''),
              //       icon: const Icon(Icons.exit_to_app_outlined)),
              // )
            ],
          ),
        ),
        InkWell(
          onTap: () => html.window.open(githubUrl, ''),
          child: Container(
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.white),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [color1, color2, color3])),
            height: 190,
            width: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  appName,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                            const TextStyle(fontFamily: 'Preah', height: 1.2),
                        children: [
                          TextSpan(
                            text: des1,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ])),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  //padding: EdgeInsets.only(top: 20),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    url,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: 300,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget container2(
    String appName,
    String des1,
    String url,
    String githubUrl,
    String des2,
    Color color1,
    Color color2,
    Color color3,
    String featured1,
    String featured2) {
  return Container(
    alignment: Alignment.topLeft,
    //padding: const EdgeInsets.all(30),
    height: 450,
    width: 1100,
    //decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Column(
      children: [
        SizedBox(
          // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          //padding: const EdgeInsets.only(top: 20),
          height: 250,
          width: 470,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Featured Project',
                //textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                appName,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 550,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: AppColors.purpleDark,
                ),
                alignment: Alignment.topRight,
                child: Text(
                  des2,
                  style: const TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Dart'),
                  const Text('Flutter'),
                  Text(featured1),
                  Text(featured2),
                ],
              ),
              // FlutterSocialButton(
              //   onTap: () => html.window.open(githubUrl, ''),
              //   buttonType: ButtonType.github,
              //   iconColor: Colors.white,
              //   mini: true,
              // // ),
              // Container(
              //   alignment: Alignment.topRight,
              //   child: IconButton(
              //       onPressed: () => html.window.open(githubUrl, ''),
              //       icon: const Icon(Icons.exit_to_app_outlined)),
              // )
            ],
          ),
        ),
        InkWell(
          onTap: () => html.window.open(githubUrl, ''),
          child: Container(
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.white),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [color1, color2, color3])),
            height: 200,
            width: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  appName,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                            const TextStyle(fontFamily: 'Preah', height: 1.2),
                        children: [
                          TextSpan(
                            text: des1,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ])),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  //padding: EdgeInsets.only(top: 20),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    url,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: 300,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
