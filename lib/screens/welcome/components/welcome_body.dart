import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/resources/colors.dart';
import 'package:login_signup/resources/images.dart';
import 'package:login_signup/screens/components/rounded_button.dart';
import 'package:login_signup/screens/login/login_screen.dart';
import 'package:login_signup/screens/signup/signup_screen.dart';
import 'package:login_signup/screens/welcome/components/welcome_body_background.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WelcomeBodyBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.kIconChat,
              height: size.height * 0.45,
            ),
            const SizedBox(
              height: 18,
            ),
            RoundedButton(
              label: 'Login',
              onPress: () {
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
            RoundedButton(
              label: 'SignUp',
              btnColor: AppColors.kPrimaryLight,
              textColor: AppColors.kBlack,
              onPress: () {
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
      ),
    );
  }
}
