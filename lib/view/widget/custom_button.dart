import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  String name;
  Function() onTap;
  CustomButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: yellowF6E18CColor,
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: Center(
          child: CustomText(
            text: name,
            fontColor: blackColor,
            fontSize: 14,
          ),
        )
      ),
    );
  }
}