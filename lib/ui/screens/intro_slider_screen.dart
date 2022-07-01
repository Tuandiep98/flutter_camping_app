import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/common_widgets/custom_button.dart';
import 'package:flutter_camping_app/ui/global/router.dart';
import 'package:flutter_camping_app/ui/utils/theme_utils.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key key}) : super(key: key);

  @override
  State<IntroSliderScreen> createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "Your Tasks",
        description:
            "I always reminds you about your planned activities. which is always my priority and your importance.",
        pathImage: "assets/images/Collaboration_re_vyau 1.png",
        backgroundColor: const Color(0xffffffff),
        styleTitle: ThemeUtils.titleTextDarkStyle,
        styleDescription: ThemeUtils.descriptionTextDarkStyle,
      ),
    );
    slides.add(
      Slide(
        title: "Capture Your Memories",
        description:
            "We know that catching photos are necessary in your trip. that’s why we have built-in camera and gallery feature.",
        pathImage: "assets/images/moments_0y20 1.png",
        backgroundColor: const Color(0xffffffff),
        styleTitle: ThemeUtils.titleTextDarkStyle,
        styleDescription: ThemeUtils.descriptionTextDarkStyle,
      ),
    );
    slides.add(
      Slide(
        title: "Track Your Fitness",
        description:
            "Fitness is one of the main thing which is really inportant to your body and we track it in every second.",
        pathImage: "assets/images/Activity_tracker_re_2lvv 1.png",
        backgroundColor: const Color(0xffffffff),
        styleTitle: ThemeUtils.titleTextDarkStyle,
        styleDescription: ThemeUtils.descriptionTextDarkStyle,
      ),
    );
    slides.add(
      Slide(
        title: "There Is Much More",
        description:
            "We have bunch of other cool features. which is super helpful for your next camping trip. so what are you waiting for?",
        pathImage: "assets/images/camping_noc8(1) 1.png",
        backgroundColor: const Color(0xffffffff),
        styleTitle: ThemeUtils.titleTextDarkStyle,
        styleDescription: ThemeUtils.descriptionTextDarkStyle,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 100,
            child: IntroSlider(
              slides: slides,
              onDonePress: onDonePress,
              showSkipBtn: false,
              showDoneBtn: false,
              colorDot: ThemeUtils.greenish,
              colorActiveDot: ThemeUtils.darkGreen,
              renderNextBtn: _renderNextBtn(),
              renderPrevBtn: _renderPreviousBtn(),
            ),
          ),
          _buildLoginBtn(),
          const SizedBox(height: 10),
          _buildRegisterLabel(),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return CustomButton(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      title: 'Login',
      onTap: () => Get.toNamed(MyRouter.signinScreen),
    );
  }

  Widget _buildRegisterLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an Account? ',
          style: ThemeUtils.descriptionTextDarkStyle.copyWith(
            color: Colors.grey[400],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Register',
            style: ThemeUtils.descriptionTextDarkStyle,
          ),
        ),
      ],
    );
  }

  Widget _renderNextBtn() {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: ThemeUtils.greenish,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_forward_outlined,
        size: 20,
        color: Colors.grey,
      ),
    );
  }

  Widget _renderPreviousBtn() {
    return Container(
      width: 50,
      height: 35,
      decoration: BoxDecoration(
        color: ThemeUtils.greenish,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_back_outlined,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}
