import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.label,
    required this.onPress,
    this.btnColor = AppColors.kPrimary,
    this.textColor = AppColors.kWhite,
  }) : super(key: key);

  final String label;
  final VoidCallback onPress;
  final Color btnColor, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: btnColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
          ),
          onPressed: onPress,
          child: Text(
            label,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
