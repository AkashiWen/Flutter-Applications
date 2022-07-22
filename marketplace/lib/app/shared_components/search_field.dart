import 'package:flutter/material.dart';
import 'package:marketplace/app/constants/app_constants.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key, this.onSearch}) : super(key: key);

  final TextEditingController controller = TextEditingController();
  final Function(String value)? onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          hintText: 'what are you looking for..',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
            borderSide: BorderSide.none,
          ),
        ),
        textInputAction: TextInputAction.search,
        style: TextStyle(color: Colors.grey[800]),
        // 结束输入时搜索，并取消focus
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
          if (onSearch != null) onSearch!.call(controller.text);
        });
  }
}
