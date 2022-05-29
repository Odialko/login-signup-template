import 'package:flutter/material.dart';
import 'package:login_signup/resources/images.dart';

class WelcomeBodyBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBodyBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppAssets.kImageMainTop,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.kImageMainBottom,
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
