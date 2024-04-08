import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "About Us"
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: double.infinity,
        color: blackColor,
        // padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: CustomText(
            text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            fontColor: yellowF6E18CColor,
            fontSize: 18,
          ),
        )
      ),
    );
  }
}