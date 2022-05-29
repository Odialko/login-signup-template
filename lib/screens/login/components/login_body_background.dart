import 'package:flutter/material.dart';
import 'package:login_signup/resources/images.dart';

class LoginBodyBackground extends StatelessWidget {
  final Widget child;

  const LoginBodyBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                AppAssets.kImageMainTop,
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                AppAssets.kImageLoginBottom,
                width: size.width * 0.4,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
