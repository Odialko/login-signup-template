import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/resources/images.dart';
import 'package:login_signup/screens/components/already_have_an_account_check.dart';
import 'package:login_signup/screens/components/rounded_button.dart';
import 'package:login_signup/screens/components/rounded_input_field.dart';
import 'package:login_signup/screens/components/rounded_password_field.dart';
import 'package:login_signup/screens/login/components/login_body_background.dart';
import 'package:login_signup/screens/signup/signup_screen.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LoginBodyBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.kIconLogin,
            height: size.height * 0.35,
          ),
          const SizedBox(
            height: 18,
          ),
          RoundedInputField(
            hintText: 'Your Email',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 12,
          ),
          RoundedPasswordField(
            hintText: 'Password',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 12,
          ),
          RoundedButton(
            label: 'Login',
            onPress: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const SignUpScreen();
              //     },
              //   ),
              // );
            },
          ),
          const SizedBox(
            height: 12,
          ),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
