import 'package:flutter/material.dart';
import 'package:login_signup/resources/images.dart';

class SignUpBodyBackground extends StatelessWidget {
  final Widget child;
  const SignUpBodyBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                AppAssets.kImageSignupTop,
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                AppAssets.kImageMainBottom,
                width: size.width * 0.25,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
