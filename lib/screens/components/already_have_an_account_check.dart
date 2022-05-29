import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.login,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Do not have an Account?' : 'Already have an Account?',
          style: const TextStyle(color: AppColors.kPrimary),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            login ? 'Sign Up' : 'Sign in',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.kPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
