import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_signup/view/splash.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
