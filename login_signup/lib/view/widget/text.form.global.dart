import 'package:flutter/material.dart';

/// 输入框样式
class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
      {Key? key,
      required this.controller,
      required this.hint,
      required this.inputType,
      required this.obscure})
      : super(key: key);
  // controller
  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      // 自左往右添加10px留白
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        // 限制输入字符
        keyboardType: inputType,
        // 密码模式
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(height: 1),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}
