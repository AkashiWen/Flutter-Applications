import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketplace/app/constants/app_constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  final double size = 60;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: Theme.of(context).inputDecorationTheme.fillColor,
        borderRadius: const BorderRadius.all(Radius.circular(kBorderRadius)),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            FontAwesomeIcons.sliders,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
