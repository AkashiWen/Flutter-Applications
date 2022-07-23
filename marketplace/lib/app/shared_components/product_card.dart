import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/state_manager.dart';
import 'package:marketplace/app/constants/app_constants.dart';

class ProductCardData {
  ProductCardData(
      {required this.image,
      required this.price,
      required this.name,
      required this.initialFavorite});

  final ImageProvider image;
  final double price;
  final String name;
  final bool initialFavorite;
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.data, required this.onTap})
      : super(key: key);

  final ProductCardData data;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        _buildImage(data.image),
        _buildFavoriteIcon(
          context,
          data.initialFavorite,
          onChanged: (bool isFavorite) {},
        ),
      ],
    );
  }

  // 图片控件
  Widget _buildImage(ImageProvider image) => Image(
        image: image,
        fit: BoxFit.cover,
      );

  // 收藏控件
  Widget _buildFavoriteIcon(
    BuildContext context,
    bool initialFavorite, {
    required Function(bool isFavorite) onChanged,
  }) {
    // Getx - RxBool
    RxBool isFavorite = RxBool(initialFavorite);
    Color activeColor = Theme.of(context).primaryColor;
    Color? passiveColor = Theme.of(context).iconTheme.color;

    return Obx(
      () => Material(
        color: isFavorite.value ? activeColor : passiveColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(kBorderRadius),
        ),
        child: Container(
          height: 40,
          width: 40,
          child: InkWell(
            onTap: () {
              isFavorite.toggle();
              onChanged.call(isFavorite.value);
            },
            child: const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
