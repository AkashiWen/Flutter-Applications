import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '- Or sign in with- ',
          style: TextStyle(
            color: GlobalColors.descriptionTextColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            //// google
            Expanded(
              child: InkWell(
                onTap: () => Get.snackbar('soical', 'google'),
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    // 阴影
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            //// facebook
            Expanded(
              child: InkWell(
                onTap: () => Get.snackbar('soical', 'facebook'),
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    // 阴影
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/facebook.png',
                    height: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            //// twitter
            Expanded(
              child: InkWell(
                onTap: () => Get.snackbar('soical', 'twitter'),
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    // 阴影
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/twitter.png',
                    height: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
