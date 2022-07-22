library explore;

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:marketplace/app/shared_components/search_field.dart';

// binding
part '../../bindings/explore_binding.dart';
// contoller
part '../../controllers/explore_controller.dart';

class ExploreScreen extends GetView<ExploreController> {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      // 吸顶一个搜索框
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            toolbarHeight: 100,
            title: SearchField(
              onSearch: (value) {
                print("search $value");
              },
            ),
          ),
        ];
      },
      body: Container(),
    );
  }
}
