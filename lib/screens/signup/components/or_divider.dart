import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'OR',
                style: TextStyle(
                  color: AppColors.kPrimary,
                  fontWeight: FontWeight.w600,
                ),
              )),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() => const Expanded(
    child: Divider(
      height: 1.5,
      color: AppColors.kDivider,
    ),
  );
}
