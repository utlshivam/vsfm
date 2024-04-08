import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Help & Support"
        ),
        backgroundColor: yellowF6E18CColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 40,
                backgroundColor: blackColor,
                child: Icon(
                  Icons.call,
                  color: yellowF6E18CColor,
                ),
              ),
              const SizedBox(height: 40),
              CustomText(
                text: "Customer Care No.",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: "+91 "+ "1234567890",
              ),
              const SizedBox(height: 20),
              CustomText(
                text: "Email",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: "vsfm@gmail.com",
              )
            ],
          ),
        ),
      ),
    );
  }
}