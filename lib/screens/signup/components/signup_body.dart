import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/resources/images.dart';
import 'package:login_signup/screens/components/already_have_an_account_check.dart';
import 'package:login_signup/screens/components/rounded_button.dart';
import 'package:login_signup/screens/components/rounded_input_field.dart';
import 'package:login_signup/screens/components/rounded_password_field.dart';
import 'package:login_signup/screens/login/login_screen.dart';
import 'package:login_signup/screens/signup/components/or_divider.dart';
import 'package:login_signup/screens/signup/components/signup_body_background.dart';
import 'package:login_signup/screens/signup/components/social_icon.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SignUpBodyBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.kIconSignup,
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
            label: 'SignUp',
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
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const OrDivider(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: AppAssets.kIconFacebook,
                onPress: () {},
              ),
              SocialIcon(
                iconSrc: AppAssets.kIconTwitter,
                onPress: () {},
              ),
              SocialIcon(
                iconSrc: AppAssets.kIconGooglePlus,
                onPress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
