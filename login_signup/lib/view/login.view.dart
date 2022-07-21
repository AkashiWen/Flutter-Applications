import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/widget/button.global.dart';
import 'package:login_signup/view/widget/social.login.dart';
import 'package:login_signup/view/widget/text.form.global.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      print('email text field: ${emailController.text}');
    });
    passwordController.addListener(() {
      print('password text field: ${passwordController.text.length}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Scroll
      body: SingleChildScrollView(
        // 2. adjust screen
        child: SafeArea(
          // 3. Container
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            // 4. vertical dirction
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: double.infinity, height: 15),
                TextFormGlobal(
                  controller: emailController,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                const SizedBox(height: 20),
                TextFormGlobal(
                  controller: passwordController,
                  hint: 'Password',
                  inputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 30),
                const ButtonGlobal(),
                const SizedBox(height: 50),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
            ),
            InkWell(
              onTap: () => Get.snackbar('notification', 'Sign Up clicked'),
              child: Text('Sign Up',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
