import 'package:flutter/material.dart';
import 'package:web_app/features/aboutme/aboutme_widget.dart';
import 'package:web_app/features/contactus/contact_us_widget.dart';
import 'package:web_app/features/navbar/nav_bar.dart';
import 'package:web_app/features/skills/what_i_do_widget.dart';
import '../intro/intro_widget.dart';
import '../projects/projects_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Intro(),
                        AboutMe(),
                        Skills(),
                        Projects(),
                        ContactMe(),
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}
