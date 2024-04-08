import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "Edit Profile",
        ),
      ),
      body: Container(
        color: blackColor,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 10),
            CustomTextFeild(
              hintText: "full Name",
            ),
            const SizedBox(height: 10),
            CustomTextFeild(
              hintText: "Email Address",
            ),
            // const SizedBox(height: 10),
            // CustomTextFeild(
            //   hintText: "Phone No",
            // ),
            const SizedBox(height: 10),
            CustomButton(
              name: "Update now", 
              onTap: (){}
            )
          ],
        )
      ),
    );
  }
}