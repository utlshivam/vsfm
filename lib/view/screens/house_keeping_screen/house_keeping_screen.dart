import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/bouncer_screen/widget/bouncer_tile.dart';
import 'package:vsfm/view/screens/house_keeping_screen/widget/house_keeping_tile.dart';
import 'package:vsfm/view/screens/martial_art_screen/widget/martial_art_tile.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class HouseKeepingScreen extends StatefulWidget {
  const HouseKeepingScreen({super.key});

  @override
  State<HouseKeepingScreen> createState() => _HouseKeepingScreenState();
}

class _HouseKeepingScreenState extends State<HouseKeepingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "House Keeping",
        ),
      ),
      body: Container(
          color: blackColor,
          padding: EdgeInsets.all(15),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return HouseKeepingTile();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          )),
    );
  }
}
