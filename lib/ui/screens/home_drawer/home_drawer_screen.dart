import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/screens/home/home_screen.dart';
import 'package:flutter_camping_app/ui/utils/my_drawer_controller.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import 'widgets/custom_button_with_title.dart';

class MyHomePage extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen(),
        borderRadius: 32.0,
        showShadow: false,
        angle: 0.0,
        drawerShadowsBackgroundColor: ThemeUtils.darkGreen,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        menuBackgroundColor: ThemeUtils.darkGreen,
      ),
    );
  }
}

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 80),
      color: ThemeUtils.darkGreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                'Will Smith',
                style: ThemeUtils.descriptionTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              const SizedBox(width: 20),
              Icon(Icons.edit, size: 20, color: Colors.white),
            ],
          ),
          const SizedBox(height: 20),
          customButtonWithTitle(
            'Home',
            Icons.home_filled,
            true,
          ),
          customButtonWithTitle(
            'How to use',
            Icons.question_answer_outlined,
            false,
          ),
          customButtonWithTitle(
            'Language',
            Icons.language,
            false,
          ),
          customButtonWithTitle(
            'Log-out',
            Icons.logout,
            false,
          ),
        ],
      ),
    );
  }
}

class MainScreen extends GetView<MyDrawerController> {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: ElevatedButton(
          onPressed: controller.toggleDrawer,
          child: Text("Toggle Drawer"),
        ),
      ),
    );
  }
}
