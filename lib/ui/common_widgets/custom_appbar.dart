import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/global/router.dart';
import 'package:flutter_camping_app/ui/utils/my_drawer_controller.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:get/get.dart';

Widget customAppBar({@required AppBarOption appBarOtion}) {
  return PreferredSize(
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: !appBarOtion.isBackEnable
          ? GetBuilder<MyDrawerController>(builder: (_) {
              return GestureDetector(
                onTap: () {
                  _.toggleDrawer();
                },
                child: Image.asset('assets/images/grid.png', scale: 1.2),
              );
            })
          : GestureDetector(
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
              onTap: () => Get.back(),
            ),
      title: appBarOtion?.title != null
          ? (!appBarOtion.isBackEnable
              ? Center(
                  child: Text(
                    appBarOtion.title,
                    style: ThemeUtils.titleTextDarkStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                )
              : Text(
                  appBarOtion.title,
                  style: ThemeUtils.titleTextDarkStyle.copyWith(
                    fontSize: 20,
                  ),
                ))
          : SizedBox.shrink(),
      actions: !appBarOtion.isBackEnable
          ? [
              FlatButton(
                child:
                    Image.asset('assets/images/bell.png', color: Colors.black),
                onPressed: () => Get.toNamed(MyRouter.notificaitonScreen),
              ),
            ]
          : [],
    ),
    preferredSize: Size.fromHeight(70.0),
  );
}

class AppBarOption {
  final bool isBackEnable;
  final Function onBackPressed;
  final String title;
  final Color color;
  final Color titleColor;
  final double elevation;

  AppBarOption({
    this.isBackEnable = false,
    this.onBackPressed,
    this.color = const Color.fromRGBO(247, 247, 247, 1),
    this.titleColor = const Color.fromRGBO(28, 28, 28, 1),
    this.title = '',
    this.elevation = 0.5,
  });
}
