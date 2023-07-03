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
            'Some Things I\'ve Built',
            //textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          container(
              'Meals App',
              'Meals app made with flutter framework.',
              'assets/images/meals.png',
              'https://github.com/SyedMughisHussain/meals_app',
              'Meals app consist of UI.In this app user can see food meals acoording to their expense and time making process and als0 they mark meals as a favourite and see again and again easily.',
              const Color.fromARGB(255, 193, 242, 195),
              const Color.fromARGB(255, 242, 178, 174),
              const Color.fromARGB(255, 235, 192, 242),
              'Filtering in meals',
              'Navigation Routes'),
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
    padding: const EdgeInsets.all(30),
    height: 450,
    width: 1100,
    // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Row(
      children: [
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
            width: 350,
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
                Text(
                  des1,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
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
        const SizedBox(
          width: 15,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          height: 350,
          width: 470,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Featured Project',
                //textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                appName,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 150,
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
                height: 19,
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
              IconButton(
                  onPressed: () => html.window.open(githubUrl, ''),
                  icon: const Icon(Icons.exit_to_app_outlined))
            ],
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
    padding: const EdgeInsets.all(30),
    height: 450,
    width: 1100,
    //decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          height: 350,
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
                height: 8,
              ),
              Text(
                appName,
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 150,
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
                height: 19,
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
              IconButton(
                  onPressed: () => html.window.open(githubUrl, ''),
                  icon: const Icon(Icons.exit_to_app_outlined))
            ],
          ),
        ),
        const SizedBox(
          width: 15,
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
            height: 350,
            width: 550,
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
                Text(
                  des1,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
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
                    height: 257,
                    width: 440,
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
