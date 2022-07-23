library explore;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:marketplace/app/constants/app_constants.dart';
import 'package:marketplace/app/shared_components/filter_button.dart';
import 'package:marketplace/app/shared_components/product_card.dart';
import 'package:marketplace/app/shared_components/search_field.dart';
import 'package:marketplace/app/utils/services/rest_api_services.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

// binding
part '../../bindings/explore_binding.dart';
// contoller
part '../../controllers/explore_controller.dart';
// component
part '../components/product_content.dart';
part '../components/tab_bar_content.dart';

class ExploreScreen extends GetView<ExploreController> {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        // 吸顶一个搜索框
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              toolbarHeight: 100,
              title: Row(
                children: [
                  Expanded(
                    child: SearchField(
                      onSearch: (value) {
                        print("search $value");
                      },
                    ),
                  ),
                  const SizedBox(width: kSpacing),
                  FilterButton(onPressed: () {
                    print("search!");
                  }),
                ],
              ),
            ),
          ];
        },
        body: _TabBarContent(
          tabs: const [
            Text("All"),
            Text("Fashion"),
            Text("Electronic"),
            Text("Toys & Hobbies"),
            Text("Art"),
            Text("Sporting Goods"),
            Text("Home & Garden"),
          ],
          children: [
            _ProductContent(data: controller.getAllProduct()),
            _ProductContent(data: controller.getFashioinProduct()),
            Text("Electronic"),
            Text("Toys & Hobbies"),
            Text("Art"),
            Text("Sporting Goods"),
            Text("Home & Garden"),
          ],
        ),
      ),
    );
  }
}
