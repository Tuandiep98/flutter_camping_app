import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/global/router.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(MyRouter.introSlider),
      child: Scaffold(
        backgroundColor: ThemeUtils.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Makes your camping more easy, next level. and helps you to follow your plannings.',
                style: ThemeUtils.descriptionTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
