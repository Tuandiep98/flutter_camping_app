import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/global/my_router_observer.dart';
import 'ui/global/router.dart';
import 'ui/utils/my_drawer_controller.dart';
import 'ui/utils/navigation_utils.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Camping App',
      navigatorKey: NavigationUtils.navigatorKey,
      onGenerateRoute: (settings) => MyRouter.generateRoute(settings),
      navigatorObservers: [MyRouteObserver()],
      initialRoute: MyRouter.splash,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
