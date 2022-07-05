import 'package:flutter/material.dart';
import 'package:flutter_camping_app/ui/screens/add_new_trip/add_new_trip_screen.dart';
import 'package:flutter_camping_app/ui/screens/home/home_screen.dart';
import 'package:flutter_camping_app/ui/screens/home_drawer/home_drawer_screen.dart';
import 'package:flutter_camping_app/ui/screens/intro_slider_screen.dart';
import 'package:flutter_camping_app/ui/screens/notification/notification_screen.dart';
import 'package:flutter_camping_app/ui/screens/signin/signin_screen.dart';
import 'package:flutter_camping_app/ui/screens/signup/signup_screen.dart';
import 'package:flutter_camping_app/ui/screens/splash_screen.dart';

class MyRouter {
  static const String splash = '/splash';
  static const String introSlider = '/introSlider';
  static const String signinScreen = '/signinScreen';
  static const String signupScreen = '/signupScreen';
  static const String homeScreen = '/homeScreen';
  static const String myHomePage = '/myHomePage';
  static const String notificaitonScreen = '/notificationScreen';
  static const String addNewTripScreen = '/addNewTripScreen';

  static PageRouteBuilder _buildRouteNavigationWithoutEffect(
      RouteSettings settings, Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => widget,
      transitionDuration: Duration.zero,
      settings: settings,
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const SplashScreen(),
        );
      case introSlider:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const IntroSliderScreen(),
        );
      case signinScreen:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const SigninScreen(),
        );
      case signupScreen:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const SignupScreen(),
        );
      case homeScreen:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const HomeScreen(),
        );
      case myHomePage:
        return _buildRouteNavigationWithoutEffect(
          settings,
          MyHomePage(),
        );
      case notificaitonScreen:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const NotificationScreen(),
        );
      case addNewTripScreen:
        return _buildRouteNavigationWithoutEffect(
          settings,
          const AddNewTripScreen(),
        );
      default:
        return _buildRouteNavigationWithoutEffect(
          settings,
          Scaffold(
            body: Center(
              child: Text('No route found: ${settings.name}.'),
            ),
          ),
        );
    }
  }

  static void onRouteChanged(String screenName) {
    if (['', null].contains(screenName)) {
      return;
    }
  }
}
