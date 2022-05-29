import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';
import 'package:login_signup/screens/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final IconData icon, suffixIcon;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.icon = Icons.lock,
    this.suffixIcon = Icons.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: AppColors.kPrimary,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: AppColors.kPrimary,
          ),
          border: InputBorder.none,
        ),
        cursorColor: AppColors.kPrimary,
      ),
    );
  }
}
