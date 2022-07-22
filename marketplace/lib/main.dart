import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/config/routes/app_pages.dart';
import 'app/config/themes/app_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.basic,
      initialRoute: AppPages.initial, // 初始化主页面
      getPages: AppPages.routes, // 路由集合
    );
  }
}
