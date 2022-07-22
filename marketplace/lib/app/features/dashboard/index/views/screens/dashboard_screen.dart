library dashboard;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:marketplace/app/features/dashboard/explore/views/screens/explore_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// binding
part '../../bindings/dashboard_binding.dart';
// controller
part '../../controllers/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller.persistentTab,
      screens: _buildScreen(),
      items: _buildNavbarItems(),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10),
        colorBehindNavBar: Colors.white,
      ),
      // Item 动画 200ms
      itemAnimationProperties: const ItemAnimationProperties(
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      // fragment 切换动画 200ms
      screenTransitionAnimation: const ScreenTransitionAnimation(
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
        animateTabTransition: true,
      ),
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style10,
    );
  }

  List<Widget> _buildScreen() {
    return [
      ExploreScreen(),
      Center(
        child: Text('test2'),
      ),
      Center(
        child: Text('test3'),
      ),
      Center(
        child: Text('test4'),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _buildNavbarItems() {
    return [
      _navBarItem(title: "Explore", iconData: FontAwesomeIcons.tableCellsLarge),
      _navBarItem(title: "Favorite", iconData: FontAwesomeIcons.solidStar),
      _navBarItem(title: "Messages", iconData: FontAwesomeIcons.solidMessage),
      _navBarItem(title: "Profile", iconData: FontAwesomeIcons.userLarge),
    ];
  }

  PersistentBottomNavBarItem _navBarItem({
    required String title,
    required IconData iconData,
  }) {
    return PersistentBottomNavBarItem(
      icon: Icon(iconData, size: 22),
      title: title,
      activeColorPrimary: const Color.fromRGBO(246, 246, 246, 1),
      inactiveColorPrimary: const Color.fromRGBO(187, 193, 202, 1),
      activeColorSecondary: Theme.of(Get.context!).primaryColor,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
