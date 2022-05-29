import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';
import 'package:login_signup/screens/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: AppColors.kPrimary,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
        cursorColor: AppColors.kPrimary,
      ),
    );
  }
}
