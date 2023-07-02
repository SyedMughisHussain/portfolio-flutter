import 'package:flutter/material.dart';
import 'package:web_app/design/constants/utils/app_colors.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      color: AppColors.navBarColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                  style: TextStyle(fontFamily: 'Preah', color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'Welcome to  ', style: TextStyle(fontSize: 20)),
                    //SizedBox(height: 10,),
                    TextSpan(
                        text: 'My Portfolio.',
                        style: TextStyle(
                            fontFamily: 'Preah',
                            color: AppColors.purple,
                            fontSize: 20))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
