import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/bouncer_screen/widget/bouncer_tile.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class BouncerScreen extends StatefulWidget {
  const BouncerScreen({super.key});

  @override
  State<BouncerScreen> createState() => _BouncerScreenState();
}

class _BouncerScreenState extends State<BouncerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "Bouncer",
        ),
      ),
      body: Container(
          color: blackColor,
          padding: EdgeInsets.all(15),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return BouncerTile();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          )),
    );
  }
}