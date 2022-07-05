import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_appbar.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_button.dart';
import 'package:flutter_camping_app/ui/global/router.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:get/get.dart';

part './widgets/your_id_element.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          appBarOtion: AppBarOption(
        title: 'Camping Trips',
      )),
      body: Column(
        children: [
          YourIDElement(),
          const SizedBox(height: 50),
          Column(
            children: [
              Image.asset('assets/images/undraw_empty_xct9 1.png', scale: 5),
              const SizedBox(height: 20),
              Text(
                'You didn’t add any trips before.',
                style: ThemeUtils.descriptionTextDarkStyle,
              ),
            ],
          ),
          const Spacer(),
          CustomButton(
            title: 'Start New Trip',
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            onTap: () => Get.toNamed(MyRouter.addNewTripScreen),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
