import 'package:flutter/material.dart';
import 'package:web_app/features/aboutme/aboutme_widget.dart';
import 'package:web_app/features/contactus/contact_us_widget.dart';
import 'package:web_app/features/navbar/nav_bar.dart';
import 'package:web_app/features/skills/what_i_do_widget.dart';
import '../intro/intro_widget.dart';
import '../projects/projects_widget.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(),
          Expanded(
              child: WebSmoothScroll(
            animationDuration: 600,
            scrollOffset: 100,
            curve: Curves.easeInOutCirc,
            controller: _scrollController,
            child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _scrollController,
                child: const Padding(
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
          )),
        ],
      ),
    );
  }
}
