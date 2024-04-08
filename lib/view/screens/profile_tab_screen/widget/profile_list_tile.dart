import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class ProfileListTile extends StatelessWidget {
  String title;
  String data;
  IconData icon;
  Function()? onTap;
  ProfileListTile({super.key, required this.title, required this.data, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(
                  color: yellowF6E18CColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Icon(
              icon,
              size: 20,
              color: yellowF6E18CColor,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                fontSize: 12,
                fontColor: yellowF6E18CColor,
              ),
              CustomText(
                text: data,
                fontSize: 14,
                fontColor: whiteFFFFFFColor,
              )
            ],
          )
        ],
      ),
    );
  }
}